(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["main"],{

/***/ "./$$_lazy_route_resource lazy recursive":
/*!******************************************************!*\
  !*** ./$$_lazy_route_resource lazy namespace object ***!
  \******************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./balance/balance.module": [
		"./src/app/balance/balance.module.ts",
		"common",
		"balance-balance-module"
	],
	"./create-token/create-token.module": [
		"./src/app/create-token/create-token.module.ts",
		"create-token-create-token-module"
	],
	"./mini-status/mini-status.module": [
		"./src/app/mini-status/mini-status.module.ts",
		"mini-status-mini-status-module"
	],
	"./mini-term/mini-term.module": [
		"./src/app/mini-term/mini-term.module.ts",
		"mini-term-mini-term-module"
	],
	"./my-address/my-address.module": [
		"./src/app/my-address/my-address.module.ts",
		"my-address-my-address-module"
	],
	"./send-funds/send-funds.module": [
		"./src/app/send-funds/send-funds.module.ts",
		"common",
		"send-funds-send-funds-module"
	],
	"./settings/settings.module": [
		"./src/app/settings/settings.module.ts",
		"settings-settings-module"
	],
	"./web-scanner/web-scanner.module": [
		"./src/app/web-scanner/web-scanner.module.ts",
		"web-scanner-web-scanner-module"
	]
};
function webpackAsyncContext(req) {
	if(!__webpack_require__.o(map, req)) {
		return Promise.resolve().then(function() {
			var e = new Error("Cannot find module '" + req + "'");
			e.code = 'MODULE_NOT_FOUND';
			throw e;
		});
	}

	var ids = map[req], id = ids[0];
	return Promise.all(ids.slice(1).map(__webpack_require__.e)).then(function() {
		return __webpack_require__(id);
	});
}
webpackAsyncContext.keys = function webpackAsyncContextKeys() {
	return Object.keys(map);
};
webpackAsyncContext.id = "./$$_lazy_route_resource lazy recursive";
module.exports = webpackAsyncContext;

/***/ }),

/***/ "./node_modules/@ionic/core/dist/esm-es5 lazy recursive ^\\.\\/.*\\.entry\\.js$ include: \\.entry\\.js$ exclude: \\.system\\.entry\\.js$":
/*!*********************************************************************************************************************************************!*\
  !*** ./node_modules/@ionic/core/dist/esm-es5 lazy ^\.\/.*\.entry\.js$ include: \.entry\.js$ exclude: \.system\.entry\.js$ namespace object ***!
  \*********************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./ion-action-sheet-controller_8.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-action-sheet-controller_8.entry.js",
		"common",
		2
	],
	"./ion-action-sheet-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-action-sheet-ios.entry.js",
		"common",
		3
	],
	"./ion-action-sheet-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-action-sheet-md.entry.js",
		"common",
		4
	],
	"./ion-alert-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-alert-ios.entry.js",
		"common",
		5
	],
	"./ion-alert-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-alert-md.entry.js",
		"common",
		6
	],
	"./ion-app_8-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-app_8-ios.entry.js",
		0,
		"common",
		7
	],
	"./ion-app_8-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-app_8-md.entry.js",
		0,
		"common",
		8
	],
	"./ion-avatar_3-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-avatar_3-ios.entry.js",
		"common",
		9
	],
	"./ion-avatar_3-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-avatar_3-md.entry.js",
		"common",
		10
	],
	"./ion-back-button-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-back-button-ios.entry.js",
		"common",
		11
	],
	"./ion-back-button-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-back-button-md.entry.js",
		"common",
		12
	],
	"./ion-backdrop-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-backdrop-ios.entry.js",
		13
	],
	"./ion-backdrop-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-backdrop-md.entry.js",
		14
	],
	"./ion-button_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-button_2-ios.entry.js",
		"common",
		15
	],
	"./ion-button_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-button_2-md.entry.js",
		"common",
		16
	],
	"./ion-card_5-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-card_5-ios.entry.js",
		"common",
		17
	],
	"./ion-card_5-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-card_5-md.entry.js",
		"common",
		18
	],
	"./ion-checkbox-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-checkbox-ios.entry.js",
		"common",
		19
	],
	"./ion-checkbox-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-checkbox-md.entry.js",
		"common",
		20
	],
	"./ion-chip-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-chip-ios.entry.js",
		"common",
		21
	],
	"./ion-chip-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-chip-md.entry.js",
		"common",
		22
	],
	"./ion-col_3.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-col_3.entry.js",
		23
	],
	"./ion-datetime_3-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-datetime_3-ios.entry.js",
		"common",
		24
	],
	"./ion-datetime_3-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-datetime_3-md.entry.js",
		"common",
		25
	],
	"./ion-fab_3-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-fab_3-ios.entry.js",
		"common",
		26
	],
	"./ion-fab_3-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-fab_3-md.entry.js",
		"common",
		27
	],
	"./ion-img.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-img.entry.js",
		28
	],
	"./ion-infinite-scroll_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-infinite-scroll_2-ios.entry.js",
		"common",
		29
	],
	"./ion-infinite-scroll_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-infinite-scroll_2-md.entry.js",
		"common",
		30
	],
	"./ion-input-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-input-ios.entry.js",
		"common",
		31
	],
	"./ion-input-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-input-md.entry.js",
		"common",
		32
	],
	"./ion-item-option_3-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-item-option_3-ios.entry.js",
		"common",
		33
	],
	"./ion-item-option_3-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-item-option_3-md.entry.js",
		"common",
		34
	],
	"./ion-item_8-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-item_8-ios.entry.js",
		"common",
		35
	],
	"./ion-item_8-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-item_8-md.entry.js",
		"common",
		36
	],
	"./ion-loading-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-loading-ios.entry.js",
		"common",
		37
	],
	"./ion-loading-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-loading-md.entry.js",
		"common",
		38
	],
	"./ion-menu_4-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-menu_4-ios.entry.js",
		"common",
		39
	],
	"./ion-menu_4-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-menu_4-md.entry.js",
		"common",
		40
	],
	"./ion-modal-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-modal-ios.entry.js",
		0,
		"common",
		41
	],
	"./ion-modal-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-modal-md.entry.js",
		0,
		"common",
		42
	],
	"./ion-nav_5.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-nav_5.entry.js",
		0,
		"common",
		43
	],
	"./ion-popover-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-popover-ios.entry.js",
		0,
		"common",
		44
	],
	"./ion-popover-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-popover-md.entry.js",
		0,
		"common",
		45
	],
	"./ion-progress-bar-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-progress-bar-ios.entry.js",
		"common",
		46
	],
	"./ion-progress-bar-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-progress-bar-md.entry.js",
		"common",
		47
	],
	"./ion-radio_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-radio_2-ios.entry.js",
		"common",
		48
	],
	"./ion-radio_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-radio_2-md.entry.js",
		"common",
		49
	],
	"./ion-range-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-range-ios.entry.js",
		"common",
		50
	],
	"./ion-range-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-range-md.entry.js",
		"common",
		51
	],
	"./ion-refresher_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-refresher_2-ios.entry.js",
		"common",
		52
	],
	"./ion-refresher_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-refresher_2-md.entry.js",
		"common",
		53
	],
	"./ion-reorder_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-reorder_2-ios.entry.js",
		"common",
		54
	],
	"./ion-reorder_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-reorder_2-md.entry.js",
		"common",
		55
	],
	"./ion-ripple-effect.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-ripple-effect.entry.js",
		56
	],
	"./ion-route_4.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-route_4.entry.js",
		"common",
		57
	],
	"./ion-searchbar-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-searchbar-ios.entry.js",
		"common",
		58
	],
	"./ion-searchbar-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-searchbar-md.entry.js",
		"common",
		59
	],
	"./ion-segment_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-segment_2-ios.entry.js",
		"common",
		60
	],
	"./ion-segment_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-segment_2-md.entry.js",
		"common",
		61
	],
	"./ion-select_3-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-select_3-ios.entry.js",
		"common",
		62
	],
	"./ion-select_3-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-select_3-md.entry.js",
		"common",
		63
	],
	"./ion-slide_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-slide_2-ios.entry.js",
		64
	],
	"./ion-slide_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-slide_2-md.entry.js",
		65
	],
	"./ion-spinner.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-spinner.entry.js",
		"common",
		66
	],
	"./ion-split-pane-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-split-pane-ios.entry.js",
		67
	],
	"./ion-split-pane-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-split-pane-md.entry.js",
		68
	],
	"./ion-tab-bar_2-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-tab-bar_2-ios.entry.js",
		"common",
		69
	],
	"./ion-tab-bar_2-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-tab-bar_2-md.entry.js",
		"common",
		70
	],
	"./ion-tab_2.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-tab_2.entry.js",
		1
	],
	"./ion-text.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-text.entry.js",
		"common",
		71
	],
	"./ion-textarea-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-textarea-ios.entry.js",
		"common",
		72
	],
	"./ion-textarea-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-textarea-md.entry.js",
		"common",
		73
	],
	"./ion-toast-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-toast-ios.entry.js",
		"common",
		74
	],
	"./ion-toast-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-toast-md.entry.js",
		"common",
		75
	],
	"./ion-toggle-ios.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-toggle-ios.entry.js",
		"common",
		76
	],
	"./ion-toggle-md.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-toggle-md.entry.js",
		"common",
		77
	],
	"./ion-virtual-scroll.entry.js": [
		"./node_modules/@ionic/core/dist/esm-es5/ion-virtual-scroll.entry.js",
		78
	]
};
function webpackAsyncContext(req) {
	if(!__webpack_require__.o(map, req)) {
		return Promise.resolve().then(function() {
			var e = new Error("Cannot find module '" + req + "'");
			e.code = 'MODULE_NOT_FOUND';
			throw e;
		});
	}

	var ids = map[req], id = ids[0];
	return Promise.all(ids.slice(1).map(__webpack_require__.e)).then(function() {
		return __webpack_require__(id);
	});
}
webpackAsyncContext.keys = function webpackAsyncContextKeys() {
	return Object.keys(map);
};
webpackAsyncContext.id = "./node_modules/@ionic/core/dist/esm-es5 lazy recursive ^\\.\\/.*\\.entry\\.js$ include: \\.entry\\.js$ exclude: \\.system\\.entry\\.js$";
module.exports = webpackAsyncContext;

/***/ }),

/***/ "./node_modules/raw-loader/index.js!./src/app/app.component.html":
/*!**************************************************************!*\
  !*** ./node_modules/raw-loader!./src/app/app.component.html ***!
  \**************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-app>\n  <ion-split-pane when=\"lg\" contentId=\"mainMenu\" class=\"splitpane\" >\n  <ion-menu side=\"start\" contentId=\"mainMenu\">\n    <ion-header>\n      <ion-toolbar class=\"menu-toolbar\">\n      <ion-title>\n        <!-- <ion-icon class=\"menu-logo\" src=\"../../assets/icon/minima.svg\"></ion-icon>\n      <ion-note class=\"menu-logo-title\">\n          Minima \n      <ion-badge color=\"#00ABC8\" (click)=\"betaTap()\">BETA</ion-badge>\n      </ion-note> -->\n       </ion-title>   \n      </ion-toolbar>\n      \n    </ion-header>\n    \n\n    \n    <ion-content>\n        <ion-menu-toggle auto-hide=\"false\">\n          <ion-list main lines=\"none\">\n            \n            <ion-item routerLink=\"/balance\">\n              <ion-icon name=\"card\" slot=\"start\"></ion-icon> Balance\n            </ion-item>\n            <ion-item routerLink=\"/send-funds\">\n              <ion-icon name=\"send\" slot=\"start\"></ion-icon> Send\n            </ion-item>\n            <ion-item routerLink=\"/my-address\">\n              <ion-icon name=\"arrow-down\" slot=\"start\"></ion-icon> Receive\n            </ion-item>\n            <ion-item routerLink=\"/create-token\">\n              <ion-icon name=\"brush\" slot=\"start\"></ion-icon> Token\n            </ion-item>\n          <ion-item-divider>\n          </ion-item-divider>\n            <ion-item routerLink=\"/status\">\n              <ion-icon name=\"analytics\" slot=\"start\"></ion-icon> Status\n            </ion-item>\n            <ion-item routerLink=\"/mini-term\">\n              <ion-icon name=\"code\" slot=\"start\"></ion-icon> Terminal\n            </ion-item>\n            <ion-item routerLink=\"/web-scanner\">\n              <ion-icon name=\"desktop\" slot=\"start\"></ion-icon> Web\n            </ion-item>\n            <ion-item-divider></ion-item-divider>\n            <ion-item routerLink=\"/settings\">\n              <ion-icon name=\"build\" slot=\"start\"></ion-icon> Settings\n            </ion-item>\n        </ion-list>\n        </ion-menu-toggle>\n\n        <ion-item-divider>\n        </ion-item-divider>\n        <ion-item lines=\"none\">\n          <ion-button class=\"social-web\" href=\"https://minima.global/\">\n            <ion-label class=\"social-lbl\">Minima</ion-label>\n            <ion-icon class=\"social-icon\" name=\"planet\"></ion-icon> \n          </ion-button>\n          <ion-button class=\"social-web\" href=\"https://twitter.com/Minima_Global\">\n            <ion-label class=\"social-lbl\">Twitter</ion-label>\n            <ion-icon class=\"social-icon\" name=\"logo-twitter\"></ion-icon> \n          </ion-button>\n          <ion-button class=\"social-web\" href=\"https://t.me/Minima_Global\">\n            <ion-label class=\"social-lbl\">Telegram</ion-label>\n            <ion-icon class=\"social-icon\" src=\"../assets/telegram.svg\"></ion-icon> \n          </ion-button>\n          </ion-item>\n\n    </ion-content>\n  </ion-menu>\n        <ion-router-outlet main id=\"mainMenu\"></ion-router-outlet>\n  </ion-split-pane>\n\n</ion-app>"

/***/ }),

/***/ "./node_modules/raw-loader/index.js!./src/app/pop-over/pop-over.component.html":
/*!****************************************************************************!*\
  !*** ./node_modules/raw-loader!./src/app/pop-over/pop-over.component.html ***!
  \****************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "\n<ion-list>\n    <ion-list-header style=\"background-image:url('../../assets/minimatile.png'); color:black; font-weight: bolder; font-family: 'Aeonik'\">\n        Token ID \n    </ion-list-header>\n    <ion-label>\n    {{refTokenid}}\n    </ion-label>\n    <ion-button (click)=\"copyToClipboard()\"style=\"width: 100%\" expand=\"full\">\n        <ion-icon name=\"copy\"></ion-icon> \n        Copy\n    </ion-button>\n</ion-list>\n\n\n"

/***/ }),

/***/ "./src/app/app-routing.module.ts":
/*!***************************************!*\
  !*** ./src/app/app-routing.module.ts ***!
  \***************************************/
/*! exports provided: AppRoutingModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppRoutingModule", function() { return AppRoutingModule; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");



var routes = [
    { path: '', loadChildren: './balance/balance.module#BalancePageModule' },
    { path: '', redirectTo: 'balance', pathMatch: 'full' },
    { path: 'balance', loadChildren: function () { return Promise.all(/*! import() | balance-balance-module */[__webpack_require__.e("common"), __webpack_require__.e("balance-balance-module")]).then(__webpack_require__.bind(null, /*! ./balance/balance.module */ "./src/app/balance/balance.module.ts")).then(function (m) { return m.BalancePageModule; }); } },
    { path: 'send-funds', loadChildren: './send-funds/send-funds.module#SendFundsPageModule' },
    { path: 'create-token', loadChildren: './create-token/create-token.module#CreateTokenPageModule' },
    { path: 'status', loadChildren: './mini-status/mini-status.module#MiniStatusPageModule' },
    { path: 'my-address', loadChildren: './my-address/my-address.module#MyAddressPageModule' },
    { path: 'code', loadChildren: './send-funds/send-funds.module#SendFundsPageModule' },
    { path: 'settings', loadChildren: './settings/settings.module#SettingsPageModule' },
    { path: 'mini-term', loadChildren: './mini-term/mini-term.module#MiniTermPageModule' },
    { path: 'mini-status', loadChildren: './mini-status/mini-status.module#MiniStatusPageModule' },
    { path: 'create-token', loadChildren: './create-token/create-token.module#CreateTokenPageModule' },
    { path: 'web-scanner', loadChildren: './web-scanner/web-scanner.module#WebScannerPageModule' },
];
var AppRoutingModule = /** @class */ (function () {
    function AppRoutingModule() {
    }
    AppRoutingModule = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"])({
            imports: [
                _angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forRoot(routes, { preloadingStrategy: _angular_router__WEBPACK_IMPORTED_MODULE_2__["PreloadAllModules"] })
            ],
            exports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]]
        })
    ], AppRoutingModule);
    return AppRoutingModule;
}());



/***/ }),

/***/ "./src/app/app.component.scss":
/*!************************************!*\
  !*** ./src/app/app.component.scss ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "ion-icon {\n  color: #FF671D;\n}\n\n.social-icon {\n  color: #ffffff;\n  padding: 0px;\n}\n\nion-item:hover {\n  background-color: #0ad1e7;\n}\n\nion-icon:hover {\n  color: #ffffff;\n}\n\nion-item:active {\n  background-color: #0ad1e7;\n}\n\n.social-web {\n  margin: auto;\n}\n\n.social-lbl {\n  color: white;\n}\n\n.menu-logo {\n  font-size: 22px;\n}\n\n.menu-logo-title {\n  font-family: \"Aeonik\";\n  font-weight: bolder;\n  font-size: 14px;\n}\n\nion-note {\n  font-family: \"Aeonik\";\n  color: #929396;\n}\n\nion-note ion-badge {\n  color: #FF671E;\n  font-size: 10px;\n}\n\n@media only screen and (min-width: 992px) {\n  .splitpane {\n    margin-left: 180px;\n    margin-right: 180px;\n    margin-top: 100px;\n    margin-bottom: 100px;\n    box-shadow: 2px 2px 5px grey;\n  }\n\n  ion-app {\n    background-image: url('miniTiles.png');\n  }\n\n  .menu-logo {\n    font-size: 35px;\n  }\n\n  .menu-logo-title {\n    font-family: \"Blooming\";\n    font-weight: lighter;\n    font-size: 35px;\n    padding-top: 5px;\n    padding-left: 2px;\n    position: absolute;\n  }\n\n  ion-note {\n    position: absolute;\n    padding-right: 50px;\n    font-weight: bolder;\n    font-size: 12px;\n    font-family: \"Aeonik\";\n    color: #929396;\n  }\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9lbGlhcy9Qcm9qZWN0cy9taW5pbWFjb3JlL21vYmlsZS1hcHAtZnJvbnQtZW5kL2FwcC9zcmMvYXBwL2FwcC5jb21wb25lbnQuc2NzcyIsInNyYy9hcHAvYXBwLmNvbXBvbmVudC5zY3NzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0ksY0FBQTtBQ0NKOztBRENBO0VBQ0ksY0FBQTtFQUNBLFlBQUE7QUNFSjs7QURBQTtFQUNJLHlCQUFBO0FDR0o7O0FEREE7RUFDSSxjQUFBO0FDSUo7O0FEQUE7RUFDSSx5QkFBQTtBQ0dKOztBREFBO0VBQ0ksWUFBQTtBQ0dKOztBRERBO0VBQ0ksWUFBQTtBQ0lKOztBRERBO0VBQ0ksZUFBQTtBQ0lKOztBRERBO0VBQ0kscUJBQUE7RUFDQSxtQkFBQTtFQUNBLGVBQUE7QUNJSjs7QUREQTtFQUNJLHFCQUFBO0VBQ0EsY0FBQTtBQ0lKOztBREZBO0VBQ0ksY0FBQTtFQUNBLGVBQUE7QUNLSjs7QURGQTtFQUNJO0lBQ0ksa0JBQUE7SUFDQSxtQkFBQTtJQUNBLGlCQUFBO0lBQ0Esb0JBQUE7SUFFQSw0QkFBQTtFQ0lOOztFREZFO0lBQ0ksc0NBQUE7RUNLTjs7RURIRTtJQUNJLGVBQUE7RUNNTjs7RURIRTtJQUNJLHVCQUFBO0lBQ0Esb0JBQUE7SUFDQSxlQUFBO0lBQ0EsZ0JBQUE7SUFDQSxpQkFBQTtJQUNBLGtCQUFBO0VDTU47O0VESEU7SUFDSSxrQkFBQTtJQUNBLG1CQUFBO0lBQ0EsbUJBQUE7SUFDQSxlQUFBO0lBQ0EscUJBQUE7SUFDQSxjQUFBO0VDTU47QUFDRiIsImZpbGUiOiJzcmMvYXBwL2FwcC5jb21wb25lbnQuc2NzcyIsInNvdXJjZXNDb250ZW50IjpbImlvbi1pY29uIHtcbiAgICBjb2xvcjogI0ZGNjcxRDtcbn1cbi5zb2NpYWwtaWNvbiB7XG4gICAgY29sb3I6ICNmZmZmZmY7XG4gICAgcGFkZGluZzogMHB4O1xufVxuaW9uLWl0ZW06aG92ZXIge1xuICAgIGJhY2tncm91bmQtY29sb3I6IHJnYigxMCwyMDksMjMxKTtcbn1cbmlvbi1pY29uOmhvdmVyIHtcbiAgICBjb2xvcjogI2ZmZmZmZjtcblxufVxuXG5pb24taXRlbTphY3RpdmUge1xuICAgIGJhY2tncm91bmQtY29sb3I6IHJnYigxMCwyMDksMjMxKTtcbn1cblxuLnNvY2lhbC13ZWIge1xuICAgIG1hcmdpbjogYXV0bztcbn1cbi5zb2NpYWwtbGJsIHtcbiAgICBjb2xvcjp3aGl0ZTtcbn1cblxuLm1lbnUtbG9nbyB7XG4gICAgZm9udC1zaXplOiAyMnB4O1xuICAgIFxufVxuLm1lbnUtbG9nby10aXRsZSB7XG4gICAgZm9udC1mYW1pbHk6ICdBZW9uaWsnO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkZXI7XG4gICAgZm9udC1zaXplOiAxNHB4O1xufVxuXG5pb24tbm90ZSB7XG4gICAgZm9udC1mYW1pbHk6ICdBZW9uaWsnO1xuICAgIGNvbG9yOiAjOTI5Mzk2O1xufVxuaW9uLW5vdGUgaW9uLWJhZGdlIHtcbiAgICBjb2xvcjogI0ZGNjcxRTtcbiAgICBmb250LXNpemU6IDEwcHg7XG59XG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi13aWR0aDogOTkycHgpIHtcbiAgICAuc3BsaXRwYW5lIHtcbiAgICAgICAgbWFyZ2luLWxlZnQ6IDE4MHB4O1xuICAgICAgICBtYXJnaW4tcmlnaHQ6IDE4MHB4O1xuICAgICAgICBtYXJnaW4tdG9wOiAxMDBweDtcbiAgICAgICAgbWFyZ2luLWJvdHRvbTogMTAwcHg7XG4gICAgICAgIFxuICAgICAgICBib3gtc2hhZG93OiAycHggMnB4IDVweCBncmV5O1xuICAgIH1cbiAgICBpb24tYXBwIHtcbiAgICAgICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcuLi9hc3NldHMvbWluaVRpbGVzLnBuZycpO1xuICAgIH1cbiAgICAubWVudS1sb2dvIHtcbiAgICAgICAgZm9udC1zaXplOiAzNXB4O1xuICAgICAgICBcbiAgICB9XG4gICAgLm1lbnUtbG9nby10aXRsZSB7XG4gICAgICAgIGZvbnQtZmFtaWx5OiAnQmxvb21pbmcnO1xuICAgICAgICBmb250LXdlaWdodDogbGlnaHRlcjtcbiAgICAgICAgZm9udC1zaXplOiAzNXB4O1xuICAgICAgICBwYWRkaW5nLXRvcDogNXB4O1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IDJweDtcbiAgICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIH1cbiAgICBcbiAgICBpb24tbm90ZSB7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgcGFkZGluZy1yaWdodDogNTBweDtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGRlcjtcbiAgICAgICAgZm9udC1zaXplOiAxMnB4O1xuICAgICAgICBmb250LWZhbWlseTogJ0Flb25payc7XG4gICAgICAgIGNvbG9yOiAjOTI5Mzk2O1xuICAgIH1cbn1cbiIsImlvbi1pY29uIHtcbiAgY29sb3I6ICNGRjY3MUQ7XG59XG5cbi5zb2NpYWwtaWNvbiB7XG4gIGNvbG9yOiAjZmZmZmZmO1xuICBwYWRkaW5nOiAwcHg7XG59XG5cbmlvbi1pdGVtOmhvdmVyIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogIzBhZDFlNztcbn1cblxuaW9uLWljb246aG92ZXIge1xuICBjb2xvcjogI2ZmZmZmZjtcbn1cblxuaW9uLWl0ZW06YWN0aXZlIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogIzBhZDFlNztcbn1cblxuLnNvY2lhbC13ZWIge1xuICBtYXJnaW46IGF1dG87XG59XG5cbi5zb2NpYWwtbGJsIHtcbiAgY29sb3I6IHdoaXRlO1xufVxuXG4ubWVudS1sb2dvIHtcbiAgZm9udC1zaXplOiAyMnB4O1xufVxuXG4ubWVudS1sb2dvLXRpdGxlIHtcbiAgZm9udC1mYW1pbHk6IFwiQWVvbmlrXCI7XG4gIGZvbnQtd2VpZ2h0OiBib2xkZXI7XG4gIGZvbnQtc2l6ZTogMTRweDtcbn1cblxuaW9uLW5vdGUge1xuICBmb250LWZhbWlseTogXCJBZW9uaWtcIjtcbiAgY29sb3I6ICM5MjkzOTY7XG59XG5cbmlvbi1ub3RlIGlvbi1iYWRnZSB7XG4gIGNvbG9yOiAjRkY2NzFFO1xuICBmb250LXNpemU6IDEwcHg7XG59XG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi13aWR0aDogOTkycHgpIHtcbiAgLnNwbGl0cGFuZSB7XG4gICAgbWFyZ2luLWxlZnQ6IDE4MHB4O1xuICAgIG1hcmdpbi1yaWdodDogMTgwcHg7XG4gICAgbWFyZ2luLXRvcDogMTAwcHg7XG4gICAgbWFyZ2luLWJvdHRvbTogMTAwcHg7XG4gICAgYm94LXNoYWRvdzogMnB4IDJweCA1cHggZ3JleTtcbiAgfVxuXG4gIGlvbi1hcHAge1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybChcIi4uL2Fzc2V0cy9taW5pVGlsZXMucG5nXCIpO1xuICB9XG5cbiAgLm1lbnUtbG9nbyB7XG4gICAgZm9udC1zaXplOiAzNXB4O1xuICB9XG5cbiAgLm1lbnUtbG9nby10aXRsZSB7XG4gICAgZm9udC1mYW1pbHk6IFwiQmxvb21pbmdcIjtcbiAgICBmb250LXdlaWdodDogbGlnaHRlcjtcbiAgICBmb250LXNpemU6IDM1cHg7XG4gICAgcGFkZGluZy10b3A6IDVweDtcbiAgICBwYWRkaW5nLWxlZnQ6IDJweDtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIH1cblxuICBpb24tbm90ZSB7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHBhZGRpbmctcmlnaHQ6IDUwcHg7XG4gICAgZm9udC13ZWlnaHQ6IGJvbGRlcjtcbiAgICBmb250LXNpemU6IDEycHg7XG4gICAgZm9udC1mYW1pbHk6IFwiQWVvbmlrXCI7XG4gICAgY29sb3I6ICM5MjkzOTY7XG4gIH1cbn0iXX0= */"

/***/ }),

/***/ "./src/app/app.component.ts":
/*!**********************************!*\
  !*** ./src/app/app.component.ts ***!
  \**********************************/
/*! exports provided: AppComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppComponent", function() { return AppComponent; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _service_minima_api_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./service/minima-api.service */ "./src/app/service/minima-api.service.ts");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _ionic_native_splash_screen_ngx__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ionic-native/splash-screen/ngx */ "./node_modules/@ionic-native/splash-screen/ngx/index.js");
/* harmony import */ var _ionic_native_status_bar_ngx__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @ionic-native/status-bar/ngx */ "./node_modules/@ionic-native/status-bar/ngx/index.js");







var AppComponent = /** @class */ (function () {
    function AppComponent(platform, splashScreen, statusBar, menu, router, api) {
        this.platform = platform;
        this.splashScreen = splashScreen;
        this.statusBar = statusBar;
        this.menu = menu;
        this.router = router;
        this.api = api;
        this.currentRoute = '';
        this.currentVersion = 0;
        this.initializeApp();
    }
    AppComponent.prototype.ionViewWillEnter = function () {
        this.initializeApp();
    };
    AppComponent.prototype.initializeApp = function () {
        var _this = this;
        this.platform.ready().then(function () {
            _this.statusBar.styleDefault();
            setTimeout(function () { _this.splashScreen.hide(); }, 2000);
            _this.getVersion();
            /*this.router.events.subscribe((val:any) => {
              if(val.route&&val.route.path){
                this.currentRoute=val.route.path;
              }
             //this.menu.close();
            });*/
        });
    };
    AppComponent.prototype.getVersion = function () {
        var _this = this;
        this.api.getStatus().then(function (res) {
            // Check node's version..
            _this.currentVersion = res.response.version;
        });
    };
    AppComponent.prototype.ionRouteWillChange = function () {
    };
    AppComponent.prototype.betaTap = function () {
        alert("Minima Node Version 0.4");
    };
    AppComponent.ctorParameters = function () { return [
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["Platform"] },
        { type: _ionic_native_splash_screen_ngx__WEBPACK_IMPORTED_MODULE_5__["SplashScreen"] },
        { type: _ionic_native_status_bar_ngx__WEBPACK_IMPORTED_MODULE_6__["StatusBar"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["MenuController"] },
        { type: _angular_router__WEBPACK_IMPORTED_MODULE_3__["Router"] },
        { type: _service_minima_api_service__WEBPACK_IMPORTED_MODULE_1__["MinimaApiService"] }
    ]; };
    AppComponent = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_2__["Component"])({
            selector: 'app-root',
            template: __webpack_require__(/*! raw-loader!./app.component.html */ "./node_modules/raw-loader/index.js!./src/app/app.component.html"),
            styles: [__webpack_require__(/*! ./app.component.scss */ "./src/app/app.component.scss")]
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_ionic_angular__WEBPACK_IMPORTED_MODULE_4__["Platform"],
            _ionic_native_splash_screen_ngx__WEBPACK_IMPORTED_MODULE_5__["SplashScreen"],
            _ionic_native_status_bar_ngx__WEBPACK_IMPORTED_MODULE_6__["StatusBar"],
            _ionic_angular__WEBPACK_IMPORTED_MODULE_4__["MenuController"],
            _angular_router__WEBPACK_IMPORTED_MODULE_3__["Router"],
            _service_minima_api_service__WEBPACK_IMPORTED_MODULE_1__["MinimaApiService"]])
    ], AppComponent);
    return AppComponent;
}());



/***/ }),

/***/ "./src/app/app.module.ts":
/*!*******************************!*\
  !*** ./src/app/app.module.ts ***!
  \*******************************/
/*! exports provided: AppModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppModule", function() { return AppModule; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/platform-browser */ "./node_modules/@angular/platform-browser/fesm5/platform-browser.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _ionic_native_splash_screen_ngx__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @ionic-native/splash-screen/ngx */ "./node_modules/@ionic-native/splash-screen/ngx/index.js");
/* harmony import */ var _ionic_native_status_bar_ngx__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @ionic-native/status-bar/ngx */ "./node_modules/@ionic-native/status-bar/ngx/index.js");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! @angular/forms */ "./node_modules/@angular/forms/fesm5/forms.js");
/* harmony import */ var _app_component__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./app.component */ "./src/app/app.component.ts");
/* harmony import */ var _app_routing_module__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ./app-routing.module */ "./src/app/app-routing.module.ts");
/* harmony import */ var _ionic_native_clipboard_ngx__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! @ionic-native/clipboard/ngx */ "./node_modules/@ionic-native/clipboard/ngx/index.js");
/* harmony import */ var _ionic_native_qr_scanner_ngx__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! @ionic-native/qr-scanner/ngx */ "./node_modules/@ionic-native/qr-scanner/ngx/index.js");
/* harmony import */ var _pop_over_pop_over_component__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! ./pop-over/pop-over.component */ "./src/app/pop-over/pop-over.component.ts");














var AppModule = /** @class */ (function () {
    function AppModule() {
    }
    AppModule = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"])({
            declarations: [_app_component__WEBPACK_IMPORTED_MODULE_9__["AppComponent"], _pop_over_pop_over_component__WEBPACK_IMPORTED_MODULE_13__["PopOverComponent"]],
            entryComponents: [_pop_over_pop_over_component__WEBPACK_IMPORTED_MODULE_13__["PopOverComponent"]],
            imports: [_angular_forms__WEBPACK_IMPORTED_MODULE_8__["FormsModule"], _angular_common_http__WEBPACK_IMPORTED_MODULE_4__["HttpClientModule"], _angular_platform_browser__WEBPACK_IMPORTED_MODULE_2__["BrowserModule"], _ionic_angular__WEBPACK_IMPORTED_MODULE_5__["IonicModule"].forRoot(), _app_routing_module__WEBPACK_IMPORTED_MODULE_10__["AppRoutingModule"]],
            providers: [
                _ionic_native_status_bar_ngx__WEBPACK_IMPORTED_MODULE_7__["StatusBar"],
                _ionic_native_splash_screen_ngx__WEBPACK_IMPORTED_MODULE_6__["SplashScreen"],
                _ionic_native_clipboard_ngx__WEBPACK_IMPORTED_MODULE_11__["Clipboard"],
                _ionic_native_qr_scanner_ngx__WEBPACK_IMPORTED_MODULE_12__["QRScanner"],
                { provide: _angular_router__WEBPACK_IMPORTED_MODULE_3__["RouteReuseStrategy"], useClass: _ionic_angular__WEBPACK_IMPORTED_MODULE_5__["IonicRouteStrategy"] }
            ],
            bootstrap: [_app_component__WEBPACK_IMPORTED_MODULE_9__["AppComponent"]]
        })
    ], AppModule);
    return AppModule;
}());



/***/ }),

/***/ "./src/app/pop-over/pop-over.component.scss":
/*!**************************************************!*\
  !*** ./src/app/pop-over/pop-over.component.scss ***!
  \**************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "ion-button {\n  height: 35px;\n}\n\n.popover {\n  max-width: none;\n}\n\nion-list {\n  background-image: url('minimatile.png');\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9lbGlhcy9Qcm9qZWN0cy9taW5pbWFjb3JlL21vYmlsZS1hcHAtZnJvbnQtZW5kL2FwcC9zcmMvYXBwL3BvcC1vdmVyL3BvcC1vdmVyLmNvbXBvbmVudC5zY3NzIiwic3JjL2FwcC9wb3Atb3Zlci9wb3Atb3Zlci5jb21wb25lbnQuc2NzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFPQTtFQUNJLFlBQUE7QUNOSjs7QURRQTtFQUNJLGVBQUE7QUNMSjs7QURPQTtFQUNJLHVDQUFBO0FDSkoiLCJmaWxlIjoic3JjL2FwcC9wb3Atb3Zlci9wb3Atb3Zlci5jb21wb25lbnQuc2NzcyIsInNvdXJjZXNDb250ZW50IjpbIi8vIEBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi13aWR0aDogOTkycHgpIHtcbi8vICAgICBpb24tbGlzdCB7XG4vLyAgICAgICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybCgnLi4vLi4vYXNzZXRzL21pbmltYXRpbGUucG5nJyk7XG4gICAgICAgIFxuLy8gICAgIH1cbi8vIH1cblxuaW9uLWJ1dHRvbiB7XG4gICAgaGVpZ2h0OiAzNXB4O1xufVxuLnBvcG92ZXJ7XG4gICAgbWF4LXdpZHRoOiBub25lO1xufVxuaW9uLWxpc3Qge1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybCgnLi4vLi4vYXNzZXRzL21pbmltYXRpbGUucG5nJyk7XG59XG4iLCJpb24tYnV0dG9uIHtcbiAgaGVpZ2h0OiAzNXB4O1xufVxuXG4ucG9wb3ZlciB7XG4gIG1heC13aWR0aDogbm9uZTtcbn1cblxuaW9uLWxpc3Qge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoXCIuLi8uLi9hc3NldHMvbWluaW1hdGlsZS5wbmdcIik7XG59Il19 */"

/***/ }),

/***/ "./src/app/pop-over/pop-over.component.ts":
/*!************************************************!*\
  !*** ./src/app/pop-over/pop-over.component.ts ***!
  \************************************************/
/*! exports provided: PopOverComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "PopOverComponent", function() { return PopOverComponent; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _ionic_native_clipboard_ngx__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @ionic-native/clipboard/ngx */ "./node_modules/@ionic-native/clipboard/ngx/index.js");




var PopOverComponent = /** @class */ (function () {
    function PopOverComponent(navParams, clipboard, alertController) {
        this.navParams = navParams;
        this.clipboard = clipboard;
        this.alertController = alertController;
        this.refTokenid = '';
    }
    PopOverComponent.prototype.ngOnInit = function () {
        this.refTokenid = this.navParams.get('tokenid');
    };
    PopOverComponent.prototype.ionViewWillEnter = function () { };
    PopOverComponent.prototype.copyToClipboard = function () {
        this.clipboard.copy(this.refTokenid);
        this.presentAlert("Copied to clipboard", "Clipboard");
    };
    PopOverComponent.prototype.presentAlert = function (msg, header) {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function () {
            var alert;
            return tslib__WEBPACK_IMPORTED_MODULE_0__["__generator"](this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.alertController.create({
                            header: header,
                            message: msg,
                            buttons: ['Cancel', 'Ok']
                        })];
                    case 1:
                        alert = _a.sent();
                        return [4 /*yield*/, alert.present()];
                    case 2:
                        _a.sent();
                        return [2 /*return*/];
                }
            });
        });
    };
    PopOverComponent.ctorParameters = function () { return [
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_2__["NavParams"] },
        { type: _ionic_native_clipboard_ngx__WEBPACK_IMPORTED_MODULE_3__["Clipboard"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_2__["AlertController"] }
    ]; };
    tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Input"])("tokenName"),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:type", Object)
    ], PopOverComponent.prototype, "tokenName", void 0);
    tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Input"])("tokenId"),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:type", Object)
    ], PopOverComponent.prototype, "tokenId", void 0);
    PopOverComponent = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-pop-over',
            template: __webpack_require__(/*! raw-loader!./pop-over.component.html */ "./node_modules/raw-loader/index.js!./src/app/pop-over/pop-over.component.html"),
            styles: [__webpack_require__(/*! ./pop-over.component.scss */ "./src/app/pop-over/pop-over.component.scss")]
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_ionic_angular__WEBPACK_IMPORTED_MODULE_2__["NavParams"], _ionic_native_clipboard_ngx__WEBPACK_IMPORTED_MODULE_3__["Clipboard"], _ionic_angular__WEBPACK_IMPORTED_MODULE_2__["AlertController"]])
    ], PopOverComponent);
    return PopOverComponent;
}());



/***/ }),

/***/ "./src/app/service/minima-api.service.ts":
/*!***********************************************!*\
  !*** ./src/app/service/minima-api.service.ts ***!
  \***********************************************/
/*! exports provided: MinimaApiService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MinimaApiService", function() { return MinimaApiService; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../environments/environment */ "./src/environments/environment.ts");





var MinimaApiService = /** @class */ (function () {
    function MinimaApiService(http, loadingController) {
        this.http = http;
        this.loadingController = loadingController;
        this.host = '';
        this.loader = null;
        this.host = _environments_environment__WEBPACK_IMPORTED_MODULE_4__["environment"].defaultNode;
        this.host = this.getHost();
    }
    MinimaApiService.prototype.showLoader = function () {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function () {
            var _a;
            return tslib__WEBPACK_IMPORTED_MODULE_0__["__generator"](this, function (_b) {
                switch (_b.label) {
                    case 0:
                        console.log('Showloader called. ' + this);
                        if (!(this.loader == null)) return [3 /*break*/, 2];
                        console.log('Loader called');
                        _a = this;
                        return [4 /*yield*/, this.loadingController.create({
                                message: 'Loading'
                            })];
                    case 1:
                        _a.loader = _b.sent();
                        this.loader.present();
                        console.log('After showloader finished.');
                        _b.label = 2;
                    case 2: return [2 /*return*/];
                }
            });
        });
    };
    MinimaApiService.prototype.hideLoader = function () {
        return tslib__WEBPACK_IMPORTED_MODULE_0__["__awaiter"](this, void 0, void 0, function () {
            return tslib__WEBPACK_IMPORTED_MODULE_0__["__generator"](this, function (_a) {
                switch (_a.label) {
                    case 0:
                        if (!(this.loader !== null)) return [3 /*break*/, 2];
                        console.log('Hideloader passed.');
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
    MinimaApiService.prototype.createToken = function (data) {
        return this.request('createtoken+' + data.token + '+' + data.amount);
    };
    MinimaApiService.prototype.webLink = function (data) {
        return this.request('weblink+' + data.url);
    };
    MinimaApiService.prototype.getHost = function () {
        if (localStorage.getItem('minima_host') == null) {
            localStorage.setItem('minima_host', this.host);
            return this.host;
        }
        else {
            return localStorage.getItem('minima_host');
        }
    };
    MinimaApiService.prototype.setHost = function (newHost) {
        localStorage.setItem('minima_host', newHost);
        this.host = newHost;
    };
    MinimaApiService.prototype.newAddress = function () {
        return this.request('newaddress');
    };
    MinimaApiService.prototype.sendFunds = function (data) {
        return this.request('send+' + data.amount + '+' + data.address + '+' + data.tokenid);
    };
    MinimaApiService.prototype.giveMe50 = function () {
        return this.request('gimme50');
    };
    MinimaApiService.prototype.getBalance = function () {
        return this.request('balance');
    };
    MinimaApiService.prototype.getStatus = function () {
        return this.request('status');
    };
    MinimaApiService.prototype.request = function (route) {
        var self = this;
        // self.showLoader();
        console.log(route);
        return new Promise(function (resolve, reject) {
            self.http.get(self.host + route, { responseType: 'json' }).subscribe(function (d) {
                // setTimeout(() => { self.hideLoader(); }, 500);
                console.log(d);
                resolve(d);
            }, function (err) {
                self.hideLoader();
                console.log('Error ' + err);
                reject(err);
            });
        });
    };
    MinimaApiService.ctorParameters = function () { return [
        { type: _angular_common_http__WEBPACK_IMPORTED_MODULE_2__["HttpClient"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["LoadingController"] }
    ]; };
    MinimaApiService = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Injectable"])({
            providedIn: 'root'
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_angular_common_http__WEBPACK_IMPORTED_MODULE_2__["HttpClient"], _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["LoadingController"]])
    ], MinimaApiService);
    return MinimaApiService;
}());



/***/ }),

/***/ "./src/environments/environment.ts":
/*!*****************************************!*\
  !*** ./src/environments/environment.ts ***!
  \*****************************************/
/*! exports provided: environment */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "environment", function() { return environment; });
// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.
var environment = {
    production: false,
    defaultNode: 'http://127.0.0.1:8999/'
};
/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.


/***/ }),

/***/ "./src/main.ts":
/*!*********************!*\
  !*** ./src/main.ts ***!
  \*********************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/platform-browser-dynamic */ "./node_modules/@angular/platform-browser-dynamic/fesm5/platform-browser-dynamic.js");
/* harmony import */ var _app_app_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./app/app.module */ "./src/app/app.module.ts");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./environments/environment */ "./src/environments/environment.ts");




if (_environments_environment__WEBPACK_IMPORTED_MODULE_3__["environment"].production) {
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["enableProdMode"])();
}
Object(_angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__["platformBrowserDynamic"])().bootstrapModule(_app_app_module__WEBPACK_IMPORTED_MODULE_2__["AppModule"])
    .catch(function (err) { return console.log(err); });


/***/ }),

/***/ 0:
/*!***************************!*\
  !*** multi ./src/main.ts ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /Users/elias/Projects/minimacore/mobile-app-front-end/app/src/main.ts */"./src/main.ts");


/***/ })

},[[0,"runtime","vendor"]]]);
//# sourceMappingURL=main-es5.js.map