(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["pages-create-token-create-token-module"],{

/***/ "./node_modules/raw-loader/index.js!./src/app/pages/create-token/create-token.page.html":
/*!*************************************************************************************!*\
  !*** ./node_modules/raw-loader!./src/app/pages/create-token/create-token.page.html ***!
  \*************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-app>\n<ion-header>\n  <ion-toolbar>\n    <ion-buttons slot=\"start\">\n      <ion-menu-button></ion-menu-button>\n    </ion-buttons>\n    <ion-title color = \"primary\" slot=\"start\" > Token </ion-title>\n  </ion-toolbar>\n</ion-header>\n\n<ion-content>\n    <ion-card color=\"white\">\n      <ion-card-header>\n        <ion-card-title>\n          <ion-icon style=\"font-size:1.2rem;\" name=\"clipboard\"></ion-icon>\n          Your Contract for the token, <ion-label style=\"color: #FF671D;\"> \"{{ tokenName }}\" </ion-label>\n        </ion-card-title>\n      </ion-card-header>\n\n      <ion-card-content>\n        <form>\n        \n          <ion-item lines=\"none\">\n            <ion-icon style=\"color:#FF671D\" name=\"return-right\" size=\"small\"></ion-icon> \n            <ion-text style=\"font-weight: lighter; font-family: 'Aeonik-Light'; padding:5px;\">\n              Converting Minima to \n            <ion-text style=\"font-weight: lighter; font-family: 'Aeonik-Light';\" class=\"tokenStyle\">{{  '\"' + tokenName + '\"' }}</ion-text>\n            </ion-text> \n              \n          </ion-item>\n        \n        \n          <ion-item>\n            <ion-label position=\"floating\" class=\"amount-font\">Name</ion-label>\n            <ion-input #nameTextArea (ionChange)=\"onUpdateTokenName($event)\"></ion-input>\n             <!-- <ion-input placeholder=\"a description of token\"></ion-input> -->\n          </ion-item>\n  \n          <ion-item>\n            <ion-label class=\"amount-font\" position=\"floating\">Amount</ion-label>\n            <ion-input #amountRef (ionChange)=\"onAmountChanged($event)\"></ion-input>\n          </ion-item>        \n        \n      </form>\n      </ion-card-content>\n\n      \n        \n    </ion-card>\n\n</ion-content>\n\n<ion-footer>\n  <ion-toolbar>\n    <ion-buttons>\n      \n      <ion-button class=\"action-btn\" (click)=\"createToken()\" shape=\"fill\"  slot=\"primary\" expand=\"fill\" type=\"button\" position=\"relative\" >\n        <ion-icon name=\"brush\" slot=\"start\"></ion-icon>\n        Create token\n      </ion-button>\n    </ion-buttons>\n    \n  </ion-toolbar>\n</ion-footer>\n</ion-app>"

/***/ }),

/***/ "./src/app/pages/create-token/create-token.module.ts":
/*!***********************************************************!*\
  !*** ./src/app/pages/create-token/create-token.module.ts ***!
  \***********************************************************/
/*! exports provided: CreateTokenPageModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CreateTokenPageModule", function() { return CreateTokenPageModule; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm2015/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm2015/common.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm2015/forms.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm2015/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _create_token_page__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./create-token.page */ "./src/app/pages/create-token/create-token.page.ts");







const routes = [
    {
        path: '',
        component: _create_token_page__WEBPACK_IMPORTED_MODULE_6__["CreateTokenPage"]
    }
];
let CreateTokenPageModule = class CreateTokenPageModule {
};
CreateTokenPageModule = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"])({
        imports: [
            _angular_common__WEBPACK_IMPORTED_MODULE_2__["CommonModule"],
            _angular_forms__WEBPACK_IMPORTED_MODULE_3__["FormsModule"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_5__["IonicModule"],
            _angular_router__WEBPACK_IMPORTED_MODULE_4__["RouterModule"].forChild(routes)
        ],
        declarations: [_create_token_page__WEBPACK_IMPORTED_MODULE_6__["CreateTokenPage"]]
    })
], CreateTokenPageModule);



/***/ }),

/***/ "./src/app/pages/create-token/create-token.page.scss":
/*!***********************************************************!*\
  !*** ./src/app/pages/create-token/create-token.page.scss ***!
  \***********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "ion-list ion-item ion-range ion-label {\n  font-size: 1rem;\n  font-weight: 300;\n  position: relative;\n}\n\n.amount-font {\n  font-size: 1rem;\n}\n\nion-footer ion-toolbar ion-buttons ion-button {\n  width: 100%;\n}\n\nion-card {\n  --background: var(--ion-background-color, #f2f2f2);\n}\n\n.tokenStyle {\n  color: #FF671D;\n  white-space: normal;\n  font-family: \"Aeonik-Light\";\n}\n\nion-toolbar ion-title {\n  font-weight: 300;\n  position: relative;\n}\n\n.action-btn {\n  height: 72px;\n}\n\n.action-btn:hover {\n  height: 72px;\n}\n\n.action-btn:hover ion-icon {\n  font-size: large;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9lbGlhcy9Qcm9qZWN0cy9taW5pbWFjb3JlL21vYmlsZS1hcHAtZnJvbnQtZW5kL2FwcC9zcmMvYXBwL3BhZ2VzL2NyZWF0ZS10b2tlbi9jcmVhdGUtdG9rZW4ucGFnZS5zY3NzIiwic3JjL2FwcC9wYWdlcy9jcmVhdGUtdG9rZW4vY3JlYXRlLXRva2VuLnBhZ2Uuc2NzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtFQUNJLGVBQUE7RUFDQSxnQkFBQTtFQUNBLGtCQUFBO0FDQ0o7O0FEQ0E7RUFDSSxlQUFBO0FDRUo7O0FEQ0E7RUFDRyxXQUFBO0FDRUg7O0FEQ0E7RUFDSSxrREFBQTtBQ0VKOztBRENBO0VBQ0ksY0FBQTtFQUNBLG1CQUFBO0VBQ0EsMkJBQUE7QUNFSjs7QURDQTtFQUNJLGdCQUFBO0VBQ0Esa0JBQUE7QUNFSjs7QURBQTtFQUNJLFlBQUE7QUNHSjs7QUREQTtFQUNJLFlBQUE7QUNJSjs7QURGSTtFQUNJLGdCQUFBO0FDSVIiLCJmaWxlIjoic3JjL2FwcC9wYWdlcy9jcmVhdGUtdG9rZW4vY3JlYXRlLXRva2VuLnBhZ2Uuc2NzcyIsInNvdXJjZXNDb250ZW50IjpbImlvbi1saXN0IGlvbi1pdGVtIGlvbi1yYW5nZSBpb24tbGFiZWwge1xuICAgIGZvbnQtc2l6ZTogMS4wcmVtO1xuICAgIGZvbnQtd2VpZ2h0OiAzMDA7XG4gICAgcG9zaXRpb246cmVsYXRpdmU7XG59XG4uYW1vdW50LWZvbnR7XG4gICAgZm9udC1zaXplOiAxcmVtO1xufVxuXG5pb24tZm9vdGVyIGlvbi10b29sYmFyIGlvbi1idXR0b25zIGlvbi1idXR0b257XG4gICB3aWR0aDogMTAwJTtcbn1cblxuaW9uLWNhcmQge1xuICAgIC0tYmFja2dyb3VuZDogdmFyKC0taW9uLWJhY2tncm91bmQtY29sb3IsICNmMmYyZjIpO1xufVxuXG4udG9rZW5TdHlsZSB7XG4gICAgY29sb3I6ICNGRjY3MUQ7XG4gICAgd2hpdGUtc3BhY2U6IG5vcm1hbDtcbiAgICBmb250LWZhbWlseTogJ0Flb25pay1MaWdodCc7XG59XG5cbmlvbi10b29sYmFyIGlvbi10aXRsZSB7XG4gICAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgICBwb3NpdGlvbjpyZWxhdGl2ZTtcbn1cbi5hY3Rpb24tYnRuIHtcbiAgICBoZWlnaHQ6IDcycHg7XG59XG4uYWN0aW9uLWJ0bjpob3ZlciB7XG4gICAgaGVpZ2h0OiA3MnB4O1xuXG4gICAgaW9uLWljb24ge1xuICAgICAgICBmb250LXNpemU6IGxhcmdlO1xuICAgICAgfVxufSIsImlvbi1saXN0IGlvbi1pdGVtIGlvbi1yYW5nZSBpb24tbGFiZWwge1xuICBmb250LXNpemU6IDFyZW07XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG4gIHBvc2l0aW9uOiByZWxhdGl2ZTtcbn1cblxuLmFtb3VudC1mb250IHtcbiAgZm9udC1zaXplOiAxcmVtO1xufVxuXG5pb24tZm9vdGVyIGlvbi10b29sYmFyIGlvbi1idXR0b25zIGlvbi1idXR0b24ge1xuICB3aWR0aDogMTAwJTtcbn1cblxuaW9uLWNhcmQge1xuICAtLWJhY2tncm91bmQ6IHZhcigtLWlvbi1iYWNrZ3JvdW5kLWNvbG9yLCAjZjJmMmYyKTtcbn1cblxuLnRva2VuU3R5bGUge1xuICBjb2xvcjogI0ZGNjcxRDtcbiAgd2hpdGUtc3BhY2U6IG5vcm1hbDtcbiAgZm9udC1mYW1pbHk6IFwiQWVvbmlrLUxpZ2h0XCI7XG59XG5cbmlvbi10b29sYmFyIGlvbi10aXRsZSB7XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG4gIHBvc2l0aW9uOiByZWxhdGl2ZTtcbn1cblxuLmFjdGlvbi1idG4ge1xuICBoZWlnaHQ6IDcycHg7XG59XG5cbi5hY3Rpb24tYnRuOmhvdmVyIHtcbiAgaGVpZ2h0OiA3MnB4O1xufVxuLmFjdGlvbi1idG46aG92ZXIgaW9uLWljb24ge1xuICBmb250LXNpemU6IGxhcmdlO1xufSJdfQ== */"

/***/ }),

/***/ "./src/app/pages/create-token/create-token.page.ts":
/*!*********************************************************!*\
  !*** ./src/app/pages/create-token/create-token.page.ts ***!
  \*********************************************************/
/*! exports provided: CreateTokenPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CreateTokenPage", function() { return CreateTokenPage; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm2015/core.js");
/* harmony import */ var _service_minima_api_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../service/minima-api.service */ "./src/app/service/minima-api.service.ts");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");




let CreateTokenPage = class CreateTokenPage {
    constructor(api, alertController, toastController) {
        this.api = api;
        this.alertController = alertController;
        this.toastController = toastController;
        this.data = {};
        this.minimaAmount = 0;
        this.forNewToken = 0;
        this.tokenAmount = 0;
        this.tokenName = '?';
        this.balance = 0;
    }
    ionViewDidEnter() { }
    ngOnInit() { }
    createToken() {
        this.data.token = this.tokenName;
        this.data.amount = this.tokenAmount;
        if (this.data.token && this.data.token !== '' && this.data.amount && this.data.amount > 0) {
            this.api.createToken(this.data).then((res) => {
                if (res.status == true) {
                    this.presentToast('Success! ' + this.tokenName + ' has been successfully created', "success");
                    this.resetForm();
                }
                else {
                    this.presentToast('Something went wrong.  Please try again!', 'danger');
                }
            });
        }
        else {
            this.presentToast('Something went wrong.  Please try again!', 'danger');
        }
    }
    presentAlert(msg, header) {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function* () {
            const alert = yield this.alertController.create({
                header: header,
                message: msg,
                buttons: ['OK']
            });
            yield alert.present();
        });
    }
    //Alerts
    presentToast(msg, type) {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function* () {
            const toast = yield this.toastController.create({
                message: msg,
                duration: 4000,
                color: type,
                keyboardClose: true,
                translucent: true,
                position: 'top'
            });
            toast.present();
        });
    }
    onAmountChanged(event) {
        this.tokenAmount = event.target.value;
        this.minimaAmount = this.tokenAmount / 1000000000000;
        let regExp = new RegExp('^[a-zA-Z]+$');
        let regExpSpecial = new RegExp('[^\w\d]');
        if (regExp.test(this.tokenAmount.toString())) {
            event.target.value = this.tokenAmount.toString().slice(0, -1);
        }
    }
    resetForm() {
        this.nameText.value = '';
        //this.tokenSlider.value = 0;
        this.amountRef.value = '';
        this.forNewToken = 0;
        this.tokenAmount = 0;
        this.tokenName = '';
    }
    onUpdateTokenName(event) {
        this.tokenName = event.target.value;
    }
};
CreateTokenPage.ctorParameters = () => [
    { type: _service_minima_api_service__WEBPACK_IMPORTED_MODULE_2__["MinimaApiService"] },
    { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["AlertController"] },
    { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["ToastController"] }
];
tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["ViewChild"])('nameTextArea', { static: false }),
    tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:type", _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["IonInput"])
], CreateTokenPage.prototype, "nameText", void 0);
tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["ViewChild"])('tokenSlider', { static: false }),
    tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:type", _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["IonRange"])
], CreateTokenPage.prototype, "tokenSlider", void 0);
tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["ViewChild"])('amountRef', { static: false }),
    tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:type", _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["IonInput"])
], CreateTokenPage.prototype, "amountRef", void 0);
CreateTokenPage = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
        selector: 'app-create-token',
        template: __webpack_require__(/*! raw-loader!./create-token.page.html */ "./node_modules/raw-loader/index.js!./src/app/pages/create-token/create-token.page.html"),
        styles: [__webpack_require__(/*! ./create-token.page.scss */ "./src/app/pages/create-token/create-token.page.scss")]
    }),
    tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_service_minima_api_service__WEBPACK_IMPORTED_MODULE_2__["MinimaApiService"], _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["AlertController"], _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["ToastController"]])
], CreateTokenPage);



/***/ })

}]);
//# sourceMappingURL=pages-create-token-create-token-module-es2015.js.map