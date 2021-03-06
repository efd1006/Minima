import { Observable, Subscription } from 'rxjs';
import { PopTermComponent } from '../../components/pop-term/pop-term.component';
import { Component, OnInit, ViewChild, ElementRef, Renderer2, OnDestroy } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { LoadingController, NavController, IonContent, PopoverController, Platform } from '@ionic/angular';
import { environment } from '../../../environments/environment';
import { map } from 'rxjs/operators';
import { UserTerminal } from '../../service/userterminal.service';
import { Storage } from '@ionic/storage';


@Component({
  selector: 'app-mini-term',
  templateUrl: './mini-term.page.html',
  styleUrls: ['./mini-term.page.scss']
})

export class MiniTermPage implements OnInit {

  @ViewChild(IonContent, {static : false} ) ionContent: IonContent;
  @ViewChild('terminal', {static: false}) terminal: ElementRef;
  
  public size: number;
  private host = '';
  public lastLine = '';
  public isEnabled: boolean; 
  private loader: any = null;
  public globalInstance: any;
  public fontSubscription: Subscription;

  constructor(private http: HttpClient,
             public loadingController: LoadingController,
             public navCtrl: NavController, private renderer: Renderer2,
             public popoverController: PopoverController,
             public userTerminal: UserTerminal,
             private storage: Storage,
             private platform: Platform) {
      
      this.host = environment.defaultNode;
      this.host = this.getHost();
    // Disable up and down keys.
      window.addEventListener("keydown", function(e) {
        if([37, 38, 39, 40].indexOf(e.keyCode) > -1) {
          e.preventDefault();
        }
      }, false);
  }

  ngOnInit(){
    const mStr = parseInt(localStorage.getItem('termFontSize'), 10);
    this.size = mStr;
    // Stored subscription that watches if we activated button on PopTerm
    this.fontSubscription = 
    this.userTerminal.fontSizeEmitter.subscribe( didActivate => {
      if(this.size != didActivate){
          if(this.size > 0 && this.size <= 50){
            this.size += didActivate;
            localStorage.setItem('termFontSize', "" + this.size);
          } else {
            this.size = 14;
            localStorage.setItem('termFontSize', ""+ this.size);
          }
      }
    });
  }

  ionViewWillEnter(){
    
  }
  ionViewWillLeave(){
   localStorage.setItem('termFontSize', ""+this.size);
   this.fontSubscription.unsubscribe();
  }

  ngAfterViewInit() {

  this.terminal.nativeElement.value += "**********************************************\n";
  this.terminal.nativeElement.value += "*  __  __  ____  _  _  ____  __  __    __    *\n";
  this.terminal.nativeElement.value += "* (  \\/  )(_  _)( \\( )(_  _)(  \\/  )  /__\\   *\n";
  this.terminal.nativeElement.value += "*  )    (  _)(_  )  (  _)(_  )    (  /(__)\\  *\n";
  this.terminal.nativeElement.value += "* (_/\\/\\_)(____)(_)\\_)(____)(_/\\/\\_)(__)(__) *\n";
  this.terminal.nativeElement.value += "*                                            *\n";
  this.terminal.nativeElement.value += "**********************************************\n";

  this.terminal.nativeElement.value += "Welcome to Minima. For assistance type help. Then press enter.\n";

  this.globalInstance = this.renderer.listen(this.terminal.nativeElement, 'keydown', (e) => {

      if([13].indexOf(e.keyCode) > -1) {
        // get the whole textarea text..
        var msg = this.terminal.nativeElement.value;
        // get the last line...
        this.lastLine = msg.substr(msg.lastIndexOf("\n")+1);
        if(this.lastLine.length > 1){
        // get the json call
        this.request(this.lastLine);
        }
        
      }
  });

 }

//PopTerm Editing methods
getFontSize() {
  return this.size + 'px';
}

//end of PopTerm Editing methods

scrollToBottomOnInit() {
  //scrolling
  setTimeout(() => {

    this.ionContent.scrollToBottom(300);

  }, 200);
}

//Minima Api Service
getHost() {
  if (localStorage.getItem('minima_host') == null) {
    localStorage.setItem('minima_host', this.host);
    return this.host;
  } else {
    return localStorage.getItem('minima_host');
    }
  }

//api calls
request(route) {
    if(route === 'printchain'){
      return new Promise((resolve, reject) => {
        this.http.get(this.host + route, { responseType: 'text' }).subscribe(( d: any ) => {
          
          const regex = d.replace(environment.newLine, "\\n"); // replace \n with <br/> has all 3 \n|\r|\r\n

          this.terminal.nativeElement.value += regex;

          this.terminal.nativeElement.scrollTop = this.terminal.nativeElement.scrollHeight;

          resolve(d);
        }, (err) => {

          this.hideLoader();

          console.log('Error ' + err );

          reject(err);
        });
      });
    } else if (route === 'tutorial' || route === 'Tutorial') {
    
        return new Promise((resolve, reject) => {
          this.http.get(this.host + route, { responseType: 'json' }).subscribe(( d: any ) => {
            
            const regex = JSON.stringify(d, undefined, 2).replace("\\\\n", "\n");
            console.log(regex);
            this.terminal.nativeElement.value += regex;

            this.terminal.nativeElement.scrollTop = this.terminal.nativeElement.scrollHeight;

            resolve(d);
          });
        });
    }
    else {
      return new Promise((resolve, reject) => {
        this.http.get(this.host + route, { responseType: 'json' }).subscribe(( d: any ) => {

          this.terminal.nativeElement.value += JSON.stringify(d, undefined, 2) + "\n";

          this.terminal.nativeElement.scrollTop = this.terminal.nativeElement.scrollHeight;

          resolve(d);
        }, (err) => {

          this.hideLoader();
          
          console.log('Error ' + err );

          reject(err);
        });
      });
    }
  }

  async showLoader() {
    if (this.loader == null) {
      this.loader = await this.loadingController.create({
        message: 'Loading'
      });
      this.loader.present();
    }
  }
  
  async hideLoader() {
    if (this.loader !== null) {
      await this.loader.dismiss();
      this.loader = null;
    } else {}
  }

  async presentPopover(ev: any) {
  const popover = await this.popoverController.create({
    component: PopTermComponent,
    event: ev,
    translucent: false,
  });
  return await popover.present();

  }

}


