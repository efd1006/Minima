(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["pages-mini-term-mini-term-module"],{

/***/ "./node_modules/raw-loader/index.js!./src/app/pages/mini-term/mini-term.page.html":
/*!*******************************************************************************!*\
  !*** ./node_modules/raw-loader!./src/app/pages/mini-term/mini-term.page.html ***!
  \*******************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-app>\n<ion-header>\n\n  <ion-toolbar>\n    <ion-buttons slot=\"start\">\n      <ion-menu-button></ion-menu-button>\n    </ion-buttons>\n    <ion-title color=\"primary\">\n      Terminal\n    </ion-title>\n      <ion-label \n      (click)=\"presentPopover($event)\" \n      fill=\"clear\"\n      lines=\"none\" \n      slot=\"end\"\n      class=\"resize-tool-btn\">aA</ion-label>\n  </ion-toolbar>\n</ion-header>\n\n<ion-content #ionContent>\n  <!-- Terminal -->\n  <ion-text>\n  <textarea\n  #terminal\n  class=\"terminal\"\n  [ngStyle] = \"{'font-size': getFontSize()}\" \n  autocapitalize=\"false\"\n  spellcheck=\"false\"\n  autocorrect=\"off\"></textarea>\n\n  </ion-text>\n</ion-content>\n</ion-app>\n<!-- <div class=\"terminal\">\n  <div id=\"history\">\n    \n  </div>\n  <div class=\"line\">\n    <span id=\"path\">c:/&nbsp;>&nbsp;</span>\n    <input type=\"text\" id=\"input\">\n  </div>\n</div> -->\n\n"

/***/ }),

/***/ "./src/app/pages/mini-term/mini-term.module.ts":
/*!*****************************************************!*\
  !*** ./src/app/pages/mini-term/mini-term.module.ts ***!
  \*****************************************************/
/*! exports provided: MiniTermPageModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MiniTermPageModule", function() { return MiniTermPageModule; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm5/common.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm5/forms.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _mini_term_page__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./mini-term.page */ "./src/app/pages/mini-term/mini-term.page.ts");







var routes = [
    {
        path: '',
        component: _mini_term_page__WEBPACK_IMPORTED_MODULE_6__["MiniTermPage"]
    }
];
var MiniTermPageModule = /** @class */ (function () {
    function MiniTermPageModule() {
    }
    MiniTermPageModule = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"])({
            imports: [
                _angular_common__WEBPACK_IMPORTED_MODULE_2__["CommonModule"],
                _angular_forms__WEBPACK_IMPORTED_MODULE_3__["FormsModule"],
                _ionic_angular__WEBPACK_IMPORTED_MODULE_5__["IonicModule"],
                _angular_router__WEBPACK_IMPORTED_MODULE_4__["RouterModule"].forChild(routes)
            ],
            declarations: [_mini_term_page__WEBPACK_IMPORTED_MODULE_6__["MiniTermPage"]]
        })
    ], MiniTermPageModule);
    return MiniTermPageModule;
}());



/***/ }),

/***/ "./src/app/pages/mini-term/mini-term.page.scss":
/*!*****************************************************!*\
  !*** ./src/app/pages/mini-term/mini-term.page.scss ***!
  \*****************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = ".terminal {\n  min-height: 100%;\n  width: 100%;\n  background-color: var(--ion-background-color, #ffffff);\n  color: var(--ion-text-color, #000000);\n  padding: 5px;\n  font-family: monospace;\n}\n\n.resize-tool-btn {\n  font-family: \"Aeonik\";\n  font-size: 16px;\n  padding-right: 15px;\n  color: #929396;\n  text-transform: none;\n}\n\n.no-scroll {\n  --overflow: hidden;\n}\n\nion-content {\n  --overflow: hidden;\n}\n\ntextarea:hover,\ninput:hover,\ntextarea:active,\ninput:active,\ntextarea:focus,\ninput:focus,\nbutton:focus,\nbutton:active,\nbutton:hover,\nlabel:focus,\n.btn:active,\n.btn.active {\n  outline: 0px !important;\n  -webkit-appearance: none;\n  box-shadow: none !important;\n}\n\n@media only screen and (min-width: 990px) {\n  .terminal {\n    font-size: 16px;\n    border: 0px;\n  }\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9lbGlhcy9Qcm9qZWN0cy9taW5pbWFjb3JlL21vYmlsZS1hcHAtZnJvbnQtZW5kL2FwcC9zcmMvYXBwL3BhZ2VzL21pbmktdGVybS9taW5pLXRlcm0ucGFnZS5zY3NzIiwic3JjL2FwcC9wYWdlcy9taW5pLXRlcm0vbWluaS10ZXJtLnBhZ2Uuc2NzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtFQUNJLGdCQUFBO0VBQ0EsV0FBQTtFQUNBLHNEQUFBO0VBQ0EscUNBQUE7RUFDQSxZQUFBO0VBQ0Esc0JBQUE7QUNDSjs7QURFQTtFQUNJLHFCQUFBO0VBQ0EsZUFBQTtFQUNBLG1CQUFBO0VBQ0EsY0FBQTtFQUNBLG9CQUFBO0FDQ0o7O0FERUE7RUFDSSxrQkFBQTtBQ0NKOztBRENBO0VBQ0ksa0JBQUE7QUNFSjs7QURDQTs7Ozs7Ozs7Ozs7O0VBYUksdUJBQUE7RUFDQSx3QkFBQTtFQUNBLDJCQUFBO0FDQ0o7O0FERUE7RUFDSTtJQUNJLGVBQUE7SUFDQSxXQUFBO0VDQ047QUFDRiIsImZpbGUiOiJzcmMvYXBwL3BhZ2VzL21pbmktdGVybS9taW5pLXRlcm0ucGFnZS5zY3NzIiwic291cmNlc0NvbnRlbnQiOlsiLnRlcm1pbmFsIHtcbiAgICBtaW4taGVpZ2h0OiAxMDAlO1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIGJhY2tncm91bmQtY29sb3I6IHZhcigtLWlvbi1iYWNrZ3JvdW5kLWNvbG9yLCAjZmZmZmZmKTtcbiAgICBjb2xvcjogdmFyKC0taW9uLXRleHQtY29sb3IsICMwMDAwMDApO1xuICAgIHBhZGRpbmc6IDVweDtcbiAgICBmb250LWZhbWlseTogbW9ub3NwYWNlO1xufVxuXG4ucmVzaXplLXRvb2wtYnRuIHtcbiAgICBmb250LWZhbWlseTogJ0Flb25payc7XG4gICAgZm9udC1zaXplOiAxNnB4O1xuICAgIHBhZGRpbmctcmlnaHQ6IDE1cHg7XG4gICAgY29sb3I6ICM5MjkzOTY7XG4gICAgdGV4dC10cmFuc2Zvcm06IG5vbmU7XG59XG5cbi5uby1zY3JvbGwge1xuICAgIC0tb3ZlcmZsb3c6IGhpZGRlbjtcbn1cbmlvbi1jb250ZW50IHtcbiAgICAtLW92ZXJmbG93OiBoaWRkZW47XG59XG5cbnRleHRhcmVhOmhvdmVyLCBcbmlucHV0OmhvdmVyLCBcbnRleHRhcmVhOmFjdGl2ZSwgXG5pbnB1dDphY3RpdmUsIFxudGV4dGFyZWE6Zm9jdXMsIFxuaW5wdXQ6Zm9jdXMsXG5idXR0b246Zm9jdXMsXG5idXR0b246YWN0aXZlLFxuYnV0dG9uOmhvdmVyLFxubGFiZWw6Zm9jdXMsXG4uYnRuOmFjdGl2ZSxcbi5idG4uYWN0aXZlXG57XG4gICAgb3V0bGluZTowcHggIWltcG9ydGFudDtcbiAgICAtd2Via2l0LWFwcGVhcmFuY2U6bm9uZTtcbiAgICBib3gtc2hhZG93OiBub25lICFpbXBvcnRhbnQ7XG59XG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi13aWR0aDogOTkwcHgpIHtcbiAgICAudGVybWluYWwge1xuICAgICAgICBmb250LXNpemU6IDE2cHg7XG4gICAgICAgIGJvcmRlcjogMHB4O1xuICAgIH1cbiAgICAgXG59IiwiLnRlcm1pbmFsIHtcbiAgbWluLWhlaWdodDogMTAwJTtcbiAgd2lkdGg6IDEwMCU7XG4gIGJhY2tncm91bmQtY29sb3I6IHZhcigtLWlvbi1iYWNrZ3JvdW5kLWNvbG9yLCAjZmZmZmZmKTtcbiAgY29sb3I6IHZhcigtLWlvbi10ZXh0LWNvbG9yLCAjMDAwMDAwKTtcbiAgcGFkZGluZzogNXB4O1xuICBmb250LWZhbWlseTogbW9ub3NwYWNlO1xufVxuXG4ucmVzaXplLXRvb2wtYnRuIHtcbiAgZm9udC1mYW1pbHk6IFwiQWVvbmlrXCI7XG4gIGZvbnQtc2l6ZTogMTZweDtcbiAgcGFkZGluZy1yaWdodDogMTVweDtcbiAgY29sb3I6ICM5MjkzOTY7XG4gIHRleHQtdHJhbnNmb3JtOiBub25lO1xufVxuXG4ubm8tc2Nyb2xsIHtcbiAgLS1vdmVyZmxvdzogaGlkZGVuO1xufVxuXG5pb24tY29udGVudCB7XG4gIC0tb3ZlcmZsb3c6IGhpZGRlbjtcbn1cblxudGV4dGFyZWE6aG92ZXIsXG5pbnB1dDpob3ZlcixcbnRleHRhcmVhOmFjdGl2ZSxcbmlucHV0OmFjdGl2ZSxcbnRleHRhcmVhOmZvY3VzLFxuaW5wdXQ6Zm9jdXMsXG5idXR0b246Zm9jdXMsXG5idXR0b246YWN0aXZlLFxuYnV0dG9uOmhvdmVyLFxubGFiZWw6Zm9jdXMsXG4uYnRuOmFjdGl2ZSxcbi5idG4uYWN0aXZlIHtcbiAgb3V0bGluZTogMHB4ICFpbXBvcnRhbnQ7XG4gIC13ZWJraXQtYXBwZWFyYW5jZTogbm9uZTtcbiAgYm94LXNoYWRvdzogbm9uZSAhaW1wb3J0YW50O1xufVxuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4td2lkdGg6IDk5MHB4KSB7XG4gIC50ZXJtaW5hbCB7XG4gICAgZm9udC1zaXplOiAxNnB4O1xuICAgIGJvcmRlcjogMHB4O1xuICB9XG59Il19 */"

/***/ }),

/***/ "./src/app/pages/mini-term/mini-term.page.ts":
/*!***************************************************!*\
  !*** ./src/app/pages/mini-term/mini-term.page.ts ***!
  \***************************************************/
/*! exports provided: MiniTermPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MiniTermPage", function() { return MiniTermPage; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _components_pop_term_pop_term_component__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../components/pop-term/pop-term.component */ "./src/app/components/pop-term/pop-term.component.ts");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../../../environments/environment */ "./src/environments/environment.ts");
/* harmony import */ var _service_userterminal_service__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../../service/userterminal.service */ "./src/app/service/userterminal.service.ts");
/* harmony import */ var _ionic_storage__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @ionic/storage */ "./node_modules/@ionic/storage/fesm5/ionic-storage.js");








var MiniTermPage = /** @class */ (function () {
    function MiniTermPage(http, loadingController, navCtrl, renderer, popoverController, userTerminal, storage, platform) {
        this.http = http;
        this.loadingController = loadingController;
        this.navCtrl = navCtrl;
        this.renderer = renderer;
        this.popoverController = popoverController;
        this.userTerminal = userTerminal;
        this.storage = storage;
        this.platform = platform;
        this.host = '';
        this.lastLine = '';
        this.loader = null;
        this.host = _environments_environment__WEBPACK_IMPORTED_MODULE_5__["environment"].defaultNode;
        this.host = this.getHost();
        // Disable up and down keys.
        window.addEventListener("keydown", function (e) {
            if ([37, 38, 39, 40].indexOf(e.keyCode) > -1) {
                e.preventDefault();
            }
        }, false);
    }
    MiniTermPage.prototype.ngOnInit = function () {
        var _this = this;
        var mStr = parseInt(localStorage.getItem('termFontSize'), 10);
        this.size = mStr;
        // Stored subscription that watches if we activated button on PopTerm
        this.fontSubscription =
            this.userTerminal.fontSizeEmitter.subscribe(function (didActivate) {
                if (_this.size != didActivate) {
                    if (_this.size > 0 && _this.size <= 50) {
                        _this.size += didActivate;
                        localStorage.setItem('termFontSize', "" + _this.size);
                    }
                    else {
                        _this.size = 14;
                        localStorage.setItem('termFontSize', "" + _this.size);
                    }
                }
            });
    };
    MiniTermPage.prototype.ionViewWillEnter = function () {
    };
    MiniTermPage.prototype.ionViewWillLeave = function () {
        localStorage.setItem('termFontSize', "" + this.size);
        this.fontSubscription.unsubscribe();
    };
    MiniTermPage.prototype.ngAfterViewInit = function () {
        var _this = this;
        this.terminal.nativeElement.value += "**********************************************\n";
        this.terminal.nativeElement.value += "*  __  __  ____  _  _  ____  __  __    __    *\n";
        this.terminal.nativeElement.value += "* (  \\/  )(_  _)( \\( )(_  _)(  \\/  )  /__\\   *\n";
        this.terminal.nativeElement.value += "*  )    (  _)(_  )  (  _)(_  )    (  /(__)\\  *\n";
        this.terminal.nativeElement.value += "* (_/\\/\\_)(____)(_)\\_)(____)(_/\\/\\_)(__)(__) *\n";
        this.terminal.nativeElement.value += "*                                            *\n";
        this.terminal.nativeElement.value += "**********************************************\n";
        this.terminal.nativeElement.value += "Welcome to Minima. For assistance type help. Then press enter.\n";
        this.globalInstance = this.renderer.listen(this.terminal.nativeElement, 'keydown', function (e) {
            if ([13].indexOf(e.keyCode) > -1) {
                // get the whole textarea text..
                var msg = _this.terminal.nativeElement.value;
                // get the last line...
                _this.lastLine = msg.substr(msg.lastIndexOf("\n") + 1);
                if (_this.lastLine.length > 1) {
                    // get the json call
                    _this.request(_this.lastLine);
                }
            }
        });
    };
    //PopTerm Editing methods
    MiniTermPage.prototype.getFontSize = function () {
        return this.size + 'px';
    };
    //end of PopTerm Editing methods
    MiniTermPage.prototype.scrollToBottomOnInit = function () {
        var _this = this;
        //scrolling
        setTimeout(function () {
            _this.ionContent.scrollToBottom(300);
        }, 200);
    };
    //Minima Api Service
    MiniTermPage.prototype.getHost = function () {
        if (localStorage.getItem('minima_host') == null) {
            localStorage.setItem('minima_host', this.host);
            return this.host;
        }
        else {
            return localStorage.getItem('minima_host');
        }
    };
    //api calls
    MiniTermPage.prototype.request = function (route) {
        var _this = this;
        if (route === 'printchain') {
            return new Promise(function (resolve, reject) {
                _this.http.get(_this.host + route, { responseType: 'text' }).subscribe(function (d) {
                    var regex = d.replace(_environments_environment__WEBPACK_IMPORTED_MODULE_5__["environment"].newLine, "\\n"); // replace \n with <br/> has all 3 \n|\r|\r\n
                    _this.terminal.nativeElement.value += regex;
                    _this.terminal.nativeElement.scrollTop = _this.terminal.nativeElement.scrollHeight;
                    resolve(d);
                }, function (err) {
                    _this.hideLoader();
                    console.log('Error ' + err);
                    reject(err);
                });
            });
        }
        else if (route === 'tutorial' || route === 'Tutorial') {
            return new Promise(function (resolve, reject) {
                _this.http.get(_this.host + route, { responseType: 'json' }).subscribe(function (d) {
                    var regex = JSON.stringify(d, undefined, 2).replace("\\\\n", "\n");
                    console.log(regex);
                    _this.terminal.nativeElement.value += regex;
                    _this.terminal.nativeElement.scrollTop = _this.terminal.nativeElement.scrollHeight;
                    resolve(d);
                });
            });
        }
        else {
            return new Promise(function (resolve, reject) {
                _this.http.get(_this.host + route, { responseType: 'json' }).subscribe(function (d) {
                    _this.terminal.nativeElement.value += JSON.stringify(d, undefined, 2) + "\n";
                    _this.terminal.nativeElement.scrollTop = _this.terminal.nativeElement.scrollHeight;
                    resolve(d);
                }, function (err) {
                    _this.hideLoader();
                    console.log('Error ' + err);
                    reject(err);
                });
            });
        }
    };
    MiniTermPage.prototype.showLoader = function () {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function () {
            var _a;
            return tslib__WEBPACK_IMPORTED_MODULE_0__["__generator"](this, function (_b) {
                switch (_b.label) {
                    case 0:
                        if (!(this.loader == null)) return [3 /*break*/, 2];
                        _a = this;
                        return [4 /*yield*/, this.loadingController.create({
                                message: 'Loading'
                            })];
                    case 1:
                        _a.loader = _b.sent();
                        this.loader.present();
                        _b.label = 2;
                    case 2: return [2 /*return*/];
                }
            });
        });
    };
    MiniTermPage.prototype.hideLoader = function () {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function () {
            return tslib__WEBPACK_IMPORTED_MODULE_0__["__generator"](this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (!(this.loader !== null)) return [3 /*break*/, 2];
                        return [4 /*yield*/, this.loader.dismiss()];
                    case 1:
                        _a.sent();
                        this.loader = null;
                        return [3 /*break*/, 2];
                    case 2: return [2 /*return*/];
                }
            });
        });
    };
    MiniTermPage.prototype.presentPopover = function (ev) {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function () {
            var popover;
            return tslib__WEBPACK_IMPORTED_MODULE_0__["__generator"](this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.popoverController.create({
                            component: _components_pop_term_pop_term_component__WEBPACK_IMPORTED_MODULE_1__["PopTermComponent"],
                            event: ev,
                            translucent: false,
                        })];
                    case 1:
                        popover = _a.sent();
                        return [4 /*yield*/, popover.present()];
                    case 2: return [2 /*return*/, _a.sent()];
                }
            });
        });
    };
    MiniTermPage.ctorParameters = function () { return [
        { type: _angular_common_http__WEBPACK_IMPORTED_MODULE_3__["HttpClient"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["LoadingController"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["NavController"] },
        { type: _angular_core__WEBPACK_IMPORTED_MODULE_2__["Renderer2"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["PopoverController"] },
        { type: _service_userterminal_service__WEBPACK_IMPORTED_MODULE_6__["UserTerminal"] },
        { type: _ionic_storage__WEBPACK_IMPORTED_MODULE_7__["Storage"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["Platform"] }
    ]; };
    tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_2__["ViewChild"])(_ionic_angular__WEBPACK_IMPORTED_MODULE_4__["IonContent"], { static: false }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:type", _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["IonContent"])
    ], MiniTermPage.prototype, "ionContent", void 0);
    tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_2__["ViewChild"])('terminal', { static: false }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:type", _angular_core__WEBPACK_IMPORTED_MODULE_2__["ElementRef"])
    ], MiniTermPage.prototype, "terminal", void 0);
    MiniTermPage = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_2__["Component"])({
            selector: 'app-mini-term',
            template: __webpack_require__(/*! raw-loader!./mini-term.page.html */ "./node_modules/raw-loader/index.js!./src/app/pages/mini-term/mini-term.page.html"),
            styles: [__webpack_require__(/*! ./mini-term.page.scss */ "./src/app/pages/mini-term/mini-term.page.scss")]
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_angular_common_http__WEBPACK_IMPORTED_MODULE_3__["HttpClient"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["LoadingController"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["NavController"], _angular_core__WEBPACK_IMPORTED_MODULE_2__["Renderer2"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["PopoverController"],
            _service_userterminal_service__WEBPACK_IMPORTED_MODULE_6__["UserTerminal"],
            _ionic_storage__WEBPACK_IMPORTED_MODULE_7__["Storage"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["Platform"]])
    ], MiniTermPage);
    return MiniTermPage;
}());



/***/ })

}]);
//# sourceMappingURL=pages-mini-term-mini-term-module-es5.js.map