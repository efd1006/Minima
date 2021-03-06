(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["pages-mini-status-mini-status-module"],{

/***/ "./node_modules/raw-loader/index.js!./src/app/pages/mini-status/mini-status.page.html":
/*!***********************************************************************************!*\
  !*** ./node_modules/raw-loader!./src/app/pages/mini-status/mini-status.page.html ***!
  \***********************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-app>\n<ion-header>\n  <ion-toolbar>\n    <ion-buttons slot=\"start\">\n      <ion-menu-button></ion-menu-button>\n    </ion-buttons>\n    <ion-title color=\"primary\">\n      Status\n    </ion-title>\n  </ion-toolbar>\n</ion-header>\n\n<ion-content>\n        <ion-list *ngIf=\"statusOfStatus === 'updated' \">\n        <ion-list-header>\n        Minima Node {{ \"v\"+status?.version }}\n        </ion-list-header>\n          <ion-item>\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>Status</h2>\n            <p *ngIf=\"status?.version\" class=\"status-on\"> Online</p>\n            <p *ngIf=\"!status?.version\" class=\"status-off\"> Offline</p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>Node Version</h2>\n            <p>{{ \"v\"+status?.version }}</p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>Node uptime</h2>\n            <p>{{ status?.uptime.substring(0,51) }}</p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>Configuration path</h2>\n            <p>{{ status?.conf }}</p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>Hosting IP</h2>\n            <p>{{ status?.host +':' }}{{ status?.port }}</p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>RPC Port</h2>\n            <p>{{ status?.rpcport }}</p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>Last block number</h2>\n            <p>{{ status?.lastblock }}</p>\n            </ion-label>\n          </ion-item>\n          <ion-item lines=\"none\">\n            <ion-icon name=\"checkmark-circle\" slot=\"start\" class=\"active-icons\"></ion-icon>\n            <ion-label>\n            <h2>Last block time relayed</h2>\n            <p>{{ status?.lasttime.substring(4, 30) }}</p>\n            </ion-label>\n          </ion-item>\n        </ion-list>\n\n        <!-- SKELETON UX FOR LOADING -->\n        <div *ngIf=\"statusOfStatus === 'empty'\">\n        <ion-list>\n        <ion-list-header>\n        Minima Node Version\n        </ion-list-header>\n          <ion-item>\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>Status</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>Node Version</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>Node uptime</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            <p> <ion-skeleton-text animated style=\"width: 25%\" [hidden]=\"checkPlatform()\" ></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>Configuration path</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>Hosting IP</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>RPC Port</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n          <ion-item>\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>Last block number</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n          <ion-item lines=\"none\">\n            <ion-icon name=\"timer\" slot=\"start\" class=\"inactive-icons\"></ion-icon>\n            <ion-label>\n            <h2>Last block time relayed</h2>\n            <p> <ion-skeleton-text animated style=\"width: 50%\"></ion-skeleton-text></p>\n            </ion-label>\n          </ion-item>\n        </ion-list>\n        </div>\n\n</ion-content>\n\n<ion-footer>\n     <ion-list lines=\"none\">\n       <ion-item>\n       <ion-icon slot=\"start\" name=\"notifications\"></ion-icon>\n       <p>Call \"status\" in \n         <a style=\"font-style: normal;\" routerLink=\"/mini-term\">terminal</a> for more details of the node's status.</p> \n      </ion-item>\n     </ion-list>\n</ion-footer>\n</ion-app>"

/***/ }),

/***/ "./src/app/pages/mini-status/mini-status.module.ts":
/*!*********************************************************!*\
  !*** ./src/app/pages/mini-status/mini-status.module.ts ***!
  \*********************************************************/
/*! exports provided: MiniStatusPageModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MiniStatusPageModule", function() { return MiniStatusPageModule; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm2015/core.js");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common */ "./node_modules/@angular/common/fesm2015/common.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm2015/forms.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm2015/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _mini_status_page__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./mini-status.page */ "./src/app/pages/mini-status/mini-status.page.ts");







const routes = [
    {
        path: '',
        component: _mini_status_page__WEBPACK_IMPORTED_MODULE_6__["MiniStatusPage"]
    }
];
let MiniStatusPageModule = class MiniStatusPageModule {
};
MiniStatusPageModule = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"])({
        imports: [
            _angular_common__WEBPACK_IMPORTED_MODULE_2__["CommonModule"],
            _angular_forms__WEBPACK_IMPORTED_MODULE_3__["FormsModule"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_5__["IonicModule"],
            _angular_router__WEBPACK_IMPORTED_MODULE_4__["RouterModule"].forChild(routes)
        ],
        declarations: [_mini_status_page__WEBPACK_IMPORTED_MODULE_6__["MiniStatusPage"]]
    })
], MiniStatusPageModule);



/***/ }),

/***/ "./src/app/pages/mini-status/mini-status.page.scss":
/*!*********************************************************!*\
  !*** ./src/app/pages/mini-status/mini-status.page.scss ***!
  \*********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "ion-list-header {\n  --background: var(--ion-background-color, #f2f2f2);\n  width: auto;\n  height: 15px;\n  border: 50px;\n  border-right: 50px;\n}\n\n#status-content {\n  width: 100%;\n  padding: 5px;\n  border-radius: 20%;\n  font-size: 0.5em;\n}\n\n#status-content ion-icon {\n  padding-left: 1em;\n  color: #FF671D;\n}\n\n#status-content ion-list ion-grid ion-col ion-item {\n  font-size: 1.5em;\n}\n\n.ion-text-wrap {\n  word-wrap: normal;\n}\n\nion-list ion-item h2 {\n  color: #06AAC7;\n}\n\nion-list ion-item p {\n  white-space: normal;\n}\n\n.active-icons {\n  color: #06AAC7;\n}\n\n.inactive-icons {\n  color: #FF671D;\n}\n\nion-footer ion-list ion-item {\n  border-top: 2px solid #ffffcc;\n  border-bottom: 2px solid #ffffcc;\n  border-radius: 5px;\n}\n\nion-list-header {\n  font-size: 1rem;\n  padding: 25px;\n}\n\n.status-on {\n  color: #3FBF3F;\n}\n\n.status-off {\n  color: #f2f2f2;\n}\n\n#version {\n  font-family: \"Aeonik-light\";\n  color: #06AAC7;\n  font-size: 20px;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9lbGlhcy9Qcm9qZWN0cy9taW5pbWFjb3JlL21vYmlsZS1hcHAtZnJvbnQtZW5kL2FwcC9zcmMvYXBwL3BhZ2VzL21pbmktc3RhdHVzL21pbmktc3RhdHVzLnBhZ2Uuc2NzcyIsInNyYy9hcHAvcGFnZXMvbWluaS1zdGF0dXMvbWluaS1zdGF0dXMucGFnZS5zY3NzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0ksa0RBQUE7RUFDQSxXQUFBO0VBQ0EsWUFBQTtFQUNBLFlBQUE7RUFDQSxrQkFBQTtBQ0NKOztBRENBO0VBQ0ksV0FBQTtFQUNBLFlBQUE7RUFDQSxrQkFBQTtFQUNBLGdCQUFBO0FDRUo7O0FEQ0E7RUFDSSxpQkFBQTtFQUNBLGNBQUE7QUNFSjs7QURDQTtFQUNJLGdCQUFBO0FDRUo7O0FEQ0E7RUFDSSxpQkFBQTtBQ0VKOztBRENBO0VBQ0ksY0FBQTtBQ0VKOztBRENBO0VBQ0ksbUJBQUE7QUNFSjs7QURDQTtFQUNJLGNBQUE7QUNFSjs7QURDQTtFQUNJLGNBQUE7QUNFSjs7QURDQTtFQUNJLDZCQUFBO0VBQ0EsZ0NBQUE7RUFDQSxrQkFBQTtBQ0VKOztBRENBO0VBQ0ksZUFBQTtFQUNBLGFBQUE7QUNFSjs7QURFQTtFQUNJLGNBQUE7QUNDSjs7QURDQTtFQUNJLGNBQUE7QUNFSjs7QURBQTtFQUNJLDJCQUFBO0VBQ0EsY0FBQTtFQUNBLGVBQUE7QUNHSiIsImZpbGUiOiJzcmMvYXBwL3BhZ2VzL21pbmktc3RhdHVzL21pbmktc3RhdHVzLnBhZ2Uuc2NzcyIsInNvdXJjZXNDb250ZW50IjpbImlvbi1saXN0LWhlYWRlciB7XG4gICAgLS1iYWNrZ3JvdW5kOiB2YXIoLS1pb24tYmFja2dyb3VuZC1jb2xvciwgI2YyZjJmMik7XG4gICAgd2lkdGg6IGF1dG87XG4gICAgaGVpZ2h0OiAxNXB4O1xuICAgIGJvcmRlcjogNTBweDtcbiAgICBib3JkZXItcmlnaHQ6IDUwcHg7XG59XG4jc3RhdHVzLWNvbnRlbnQge1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIHBhZGRpbmc6IDVweDtcbiAgICBib3JkZXItcmFkaXVzOiAyMCU7XG4gICAgZm9udC1zaXplOiAwLjVlbTtcbn1cblxuI3N0YXR1cy1jb250ZW50IGlvbi1pY29uIHtcbiAgICBwYWRkaW5nLWxlZnQ6IDFlbTtcbiAgICBjb2xvcjogI0ZGNjcxRDtcbn1cblxuI3N0YXR1cy1jb250ZW50IGlvbi1saXN0IGlvbi1ncmlkIGlvbi1jb2wgaW9uLWl0ZW0ge1xuICAgIGZvbnQtc2l6ZTogMS41ZW07XG59XG5cbi5pb24tdGV4dC13cmFwIHtcbiAgICB3b3JkLXdyYXA6IG5vcm1hbDtcbn1cblxuaW9uLWxpc3QgaW9uLWl0ZW0gaDIge1xuICAgIGNvbG9yOiAjMDZBQUM3O1xufVxuXG5pb24tbGlzdCBpb24taXRlbSBwIHtcbiAgICB3aGl0ZS1zcGFjZTogbm9ybWFsO1xufVxuXG4uYWN0aXZlLWljb25zIHtcbiAgICBjb2xvcjogIzA2QUFDNztcblxufVxuLmluYWN0aXZlLWljb25ze1xuICAgIGNvbG9yOiAjRkY2NzFEO1xufVxuXG5pb24tZm9vdGVyIGlvbi1saXN0IGlvbi1pdGVtIHtcbiAgICBib3JkZXItdG9wOiAycHggc29saWQgI2ZmZmZjYztcbiAgICBib3JkZXItYm90dG9tOiAycHggc29saWQjZmZmZmNjO1xuICAgIGJvcmRlci1yYWRpdXM6IDVweDtcbn1cblxuaW9uLWxpc3QtaGVhZGVyIHtcbiAgICBmb250LXNpemU6IDEuMHJlbTtcbiAgICBwYWRkaW5nOiAyNXB4O1xufVxuXG5cbi5zdGF0dXMtb24ge1xuICAgIGNvbG9yOiAjM0ZCRjNGO1xufVxuLnN0YXR1cy1vZmYge1xuICAgIGNvbG9yOiAjZjJmMmYyXG59XG4jdmVyc2lvbiB7XG4gICAgZm9udC1mYW1pbHk6ICdBZW9uaWstbGlnaHQnO1xuICAgIGNvbG9yOiAjMDZBQUM3O1xuICAgIGZvbnQtc2l6ZTogMjBweDtcbn1cblxuIiwiaW9uLWxpc3QtaGVhZGVyIHtcbiAgLS1iYWNrZ3JvdW5kOiB2YXIoLS1pb24tYmFja2dyb3VuZC1jb2xvciwgI2YyZjJmMik7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDE1cHg7XG4gIGJvcmRlcjogNTBweDtcbiAgYm9yZGVyLXJpZ2h0OiA1MHB4O1xufVxuXG4jc3RhdHVzLWNvbnRlbnQge1xuICB3aWR0aDogMTAwJTtcbiAgcGFkZGluZzogNXB4O1xuICBib3JkZXItcmFkaXVzOiAyMCU7XG4gIGZvbnQtc2l6ZTogMC41ZW07XG59XG5cbiNzdGF0dXMtY29udGVudCBpb24taWNvbiB7XG4gIHBhZGRpbmctbGVmdDogMWVtO1xuICBjb2xvcjogI0ZGNjcxRDtcbn1cblxuI3N0YXR1cy1jb250ZW50IGlvbi1saXN0IGlvbi1ncmlkIGlvbi1jb2wgaW9uLWl0ZW0ge1xuICBmb250LXNpemU6IDEuNWVtO1xufVxuXG4uaW9uLXRleHQtd3JhcCB7XG4gIHdvcmQtd3JhcDogbm9ybWFsO1xufVxuXG5pb24tbGlzdCBpb24taXRlbSBoMiB7XG4gIGNvbG9yOiAjMDZBQUM3O1xufVxuXG5pb24tbGlzdCBpb24taXRlbSBwIHtcbiAgd2hpdGUtc3BhY2U6IG5vcm1hbDtcbn1cblxuLmFjdGl2ZS1pY29ucyB7XG4gIGNvbG9yOiAjMDZBQUM3O1xufVxuXG4uaW5hY3RpdmUtaWNvbnMge1xuICBjb2xvcjogI0ZGNjcxRDtcbn1cblxuaW9uLWZvb3RlciBpb24tbGlzdCBpb24taXRlbSB7XG4gIGJvcmRlci10b3A6IDJweCBzb2xpZCAjZmZmZmNjO1xuICBib3JkZXItYm90dG9tOiAycHggc29saWQgI2ZmZmZjYztcbiAgYm9yZGVyLXJhZGl1czogNXB4O1xufVxuXG5pb24tbGlzdC1oZWFkZXIge1xuICBmb250LXNpemU6IDFyZW07XG4gIHBhZGRpbmc6IDI1cHg7XG59XG5cbi5zdGF0dXMtb24ge1xuICBjb2xvcjogIzNGQkYzRjtcbn1cblxuLnN0YXR1cy1vZmYge1xuICBjb2xvcjogI2YyZjJmMjtcbn1cblxuI3ZlcnNpb24ge1xuICBmb250LWZhbWlseTogXCJBZW9uaWstbGlnaHRcIjtcbiAgY29sb3I6ICMwNkFBQzc7XG4gIGZvbnQtc2l6ZTogMjBweDtcbn0iXX0= */"

/***/ }),

/***/ "./src/app/pages/mini-status/mini-status.page.ts":
/*!*******************************************************!*\
  !*** ./src/app/pages/mini-status/mini-status.page.ts ***!
  \*******************************************************/
/*! exports provided: MiniStatusPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MiniStatusPage", function() { return MiniStatusPage; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var rxjs_operators__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! rxjs/operators */ "./node_modules/rxjs/_esm2015/operators/index.js");
/* harmony import */ var _service_status_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./../../service/status.service */ "./src/app/service/status.service.ts");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm2015/core.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");





let MiniStatusPage = class MiniStatusPage {
    constructor(service, ref, plat) {
        this.service = service;
        this.ref = ref;
        this.plat = plat;
        this.statusOfStatus = 'empty';
        // - vars
        this.host = '';
        this.loader = null;
    }
    ngOnInit() { }
    ionViewWillEnter() {
        setTimeout(() => {
            this.updateStatus(); // subscribes & polls status
            this.statusOfStatus = 'updated';
        }, 500);
        window.addEventListener('MinimaEvent', (evt) => {
            // Event connection success
            if (evt.detail.event === 'newblock') {
                this.updateStatus();
                this.statusOfStatus = 'updated';
                // setTimeout(() => {
                //   this.updateStatus(); // subscribes & polls status
                // }, 3500);
            }
        });
    }
    ionViewWillLeave() {
        this.statusSubscription.unsubscribe(); // unsubs
    }
    getImg() {
        if (document.body.classList.value === 'dark') {
            return '../../assets/fulllogodark.svg';
        }
        else {
            return '../../assets/fulllogo.svg';
        }
    }
    checkPlatform() {
        if (this.plat.is('ios') || this.plat.is('android')) {
            return false;
        }
        else {
            return true;
        }
    }
    updateStatus() {
        this.statusSubscription = this.service.getStatus()
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_1__["map"])(responseData => {
            const status = responseData;
            return status;
        }))
            .subscribe((res) => {
            if (this.lastJSON != JSON.stringify(res)) {
                this.status = res;
                this.statusOfStatus = 'updated';
                this.lastJSON = JSON.stringify(res);
            }
        });
    }
};
MiniStatusPage.ctorParameters = () => [
    { type: _service_status_service__WEBPACK_IMPORTED_MODULE_2__["StatusService"] },
    { type: _angular_core__WEBPACK_IMPORTED_MODULE_3__["ChangeDetectorRef"] },
    { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["Platform"] }
];
MiniStatusPage = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_3__["Component"])({
        selector: 'app-mini-status',
        template: __webpack_require__(/*! raw-loader!./mini-status.page.html */ "./node_modules/raw-loader/index.js!./src/app/pages/mini-status/mini-status.page.html"),
        providers: [_service_status_service__WEBPACK_IMPORTED_MODULE_2__["StatusService"]],
        styles: [__webpack_require__(/*! ./mini-status.page.scss */ "./src/app/pages/mini-status/mini-status.page.scss")]
    }),
    tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_service_status_service__WEBPACK_IMPORTED_MODULE_2__["StatusService"], _angular_core__WEBPACK_IMPORTED_MODULE_3__["ChangeDetectorRef"], _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["Platform"]])
], MiniStatusPage);



/***/ }),

/***/ "./src/app/service/status.service.ts":
/*!*******************************************!*\
  !*** ./src/app/service/status.service.ts ***!
  \*******************************************/
/*! exports provided: StatusService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "StatusService", function() { return StatusService; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _environments_environment_prod__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./../../environments/environment.prod */ "./src/environments/environment.prod.ts");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm2015/http.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm2015/core.js");
/* harmony import */ var rxjs__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! rxjs */ "./node_modules/rxjs/_esm2015/index.js");
/* harmony import */ var rxjs_operators__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! rxjs/operators */ "./node_modules/rxjs/_esm2015/operators/index.js");
/* harmony import */ var rxjs_Observable_timer__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! rxjs/Observable/timer */ "./node_modules/rxjs-compat/_esm2015/Observable/timer.js");







let StatusService = class StatusService {
    constructor(http, ref) {
        this.http = http;
        this.ref = ref;
        this.manualRefresh = new rxjs__WEBPACK_IMPORTED_MODULE_4__["Subject"]();
        this.host = '';
        this.loader = null;
        this.host = _environments_environment_prod__WEBPACK_IMPORTED_MODULE_1__["environment"].defaultNode;
        this.host = this.getHost();
    }
    getStatus() {
        return this.request('status');
    }
    getHost() {
        if (localStorage.getItem('minima_host') == null) {
            localStorage.setItem('minima_host', this.host);
            return this.host;
        }
        else {
            return localStorage.getItem('minima_host');
        }
    }
    doRefresh(event) {
        this.manualRefresh.next('');
        setTimeout(() => {
            event.target.complete();
        }, 1000);
    }
    request(route) {
        // let apiUrl = this.host + route; // this.host+'route' = "127.0.0.1:8999/'balance'"
        // let status$ = this.http.get(apiUrl);
        const statusObservable = rxjs__WEBPACK_IMPORTED_MODULE_4__["Observable"].create(observer => {
            observer.next(Minima.status);
        });
        let status$ = statusObservable;
        return this.polledStatus$ = Object(rxjs_Observable_timer__WEBPACK_IMPORTED_MODULE_6__["timer"])(0, 3000).pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_5__["concatMap"])(_ => status$), Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_5__["map"])((res) => res));
    }
};
StatusService.ctorParameters = () => [
    { type: _angular_common_http__WEBPACK_IMPORTED_MODULE_2__["HttpClient"] },
    { type: _angular_core__WEBPACK_IMPORTED_MODULE_3__["ChangeDetectorRef"] }
];
StatusService = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_3__["Injectable"])({
        providedIn: 'root'
    }),
    tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_angular_common_http__WEBPACK_IMPORTED_MODULE_2__["HttpClient"], _angular_core__WEBPACK_IMPORTED_MODULE_3__["ChangeDetectorRef"]])
], StatusService);



/***/ })

}]);
//# sourceMappingURL=pages-mini-status-mini-status-module-es2015.js.map