(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["mini-term-mini-term-module"],{

/***/ "./node_modules/raw-loader/index.js!./src/app/mini-term/mini-term.page.html":
/*!*************************************************************************!*\
  !*** ./node_modules/raw-loader!./src/app/mini-term/mini-term.page.html ***!
  \*************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<ion-header>\n\n    <script src=\"/node_modules/xterm/lib/xterm.js\"></script>\n\n  <ion-toolbar>\n    <ion-buttons slot=\"start\">\n      <ion-menu-button></ion-menu-button>\n    </ion-buttons>\n    <ion-title color=\"primary\">\n      Mini Terminal\n    </ion-title>\n  </ion-toolbar>\n</ion-header>\n\n<ion-content>\n<ion-grid *ngFor=\"let theExecute of theExecuted\" >\n    <ion-row>\n      <ion-col>\n        <ion-item>\n            <ion-label\n            color=\"primary\"\n            style=\"background-color: cornsilk;\"\n            class=\"ion-text-wrap\">\n              {{ theExecute }} \n            </ion-label>\n          </ion-item> \n      </ion-col> \n    </ion-row>\n</ion-grid>\n</ion-content>\n\n<ion-footer>\n<ion-toolbar>\n  <ion-row>\n      <ion-col>\n        <ion-input\n        style=\"background-color: #E0E0E0\"\n        type=\"text\"\n        autocapitalize=\"none\"\n        autocorrect=\"off\"\n        placeholder=\"$command line\"\n        [(ngModel)]=\"toExecute\"\n        (keyup.enter) = \"getCall()\">\n      </ion-input>\n    </ion-col>\n      <button ion-button small full item-end clear \n        (click)=\"getCall()\" \n        [disabled] = \"!toExecute\">Execute</button>\n    </ion-row>\n  </ion-toolbar>\n</ion-footer>\n"

/***/ }),

/***/ "./src/app/mini-term/mini-term.module.ts":
/*!***********************************************!*\
  !*** ./src/app/mini-term/mini-term.module.ts ***!
  \***********************************************/
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
/* harmony import */ var _mini_term_page__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./mini-term.page */ "./src/app/mini-term/mini-term.page.ts");







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

/***/ "./src/app/mini-term/mini-term.page.ts":
/*!*********************************************!*\
  !*** ./src/app/mini-term/mini-term.page.ts ***!
  \*********************************************/
/*! exports provided: MiniTermPage */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MiniTermPage", function() { return MiniTermPage; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var _ionic_angular__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @ionic/angular */ "./node_modules/@ionic/angular/dist/fesm5.js");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../../environments/environment */ "./src/environments/environment.ts");





var MiniTermPage = /** @class */ (function () {
    function MiniTermPage(http, loadingController) {
        this.http = http;
        this.loadingController = loadingController;
        this.toExecute = '';
        this.theExecuted = [];
        this.host = '';
        this.loader = null;
        this.host = _environments_environment__WEBPACK_IMPORTED_MODULE_4__["environment"].defaultNode;
        this.host = this.getHost();
    }
    MiniTermPage.prototype.buttonHandler = function () {
        if (this.toExecute == '') {
        }
        else {
            this.isEnabled = true;
        }
    };
    MiniTermPage.prototype.ngOnInit = function () { };
    MiniTermPage.prototype.getHost = function () {
        if (localStorage.getItem('minima_host') == null) {
            localStorage.setItem('minima_host', this.host);
            return this.host;
        }
        else {
            return localStorage.getItem('minima_host');
        }
    };
    MiniTermPage.prototype.getCall = function () {
        return this.request(this.toExecute);
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
    MiniTermPage.prototype.request = function (route) {
        var _this = this;
        var self = this;
        setTimeout(function () { self.showLoader(); }, 0);
        console.log(route);
        return new Promise(function (resolve, reject) {
            self.http.get(self.host + route, { responseType: 'json' }).subscribe(function (d) {
                setTimeout(function () { self.hideLoader(); }, 500);
                console.log(d);
                _this.theExecuted.push('$' + JSON.stringify(d));
                resolve(d);
            }, function (err) {
                self.hideLoader();
                console.log('Error ' + err);
                reject(err);
            });
        });
    };
    MiniTermPage.ctorParameters = function () { return [
        { type: _angular_common_http__WEBPACK_IMPORTED_MODULE_2__["HttpClient"] },
        { type: _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["LoadingController"] }
    ]; };
    MiniTermPage = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-mini-term',
            template: __webpack_require__(/*! raw-loader!./mini-term.page.html */ "./node_modules/raw-loader/index.js!./src/app/mini-term/mini-term.page.html"),
            styles: [__webpack_require__(/*! ./xterm.css */ "./src/app/mini-term/xterm.css")]
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_angular_common_http__WEBPACK_IMPORTED_MODULE_2__["HttpClient"], _ionic_angular__WEBPACK_IMPORTED_MODULE_3__["LoadingController"]])
    ], MiniTermPage);
    return MiniTermPage;
}());



/***/ }),

/***/ "./src/app/mini-term/xterm.css":
/*!*************************************!*\
  !*** ./src/app/mini-term/xterm.css ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "/**\n * Copyright (c) 2014 The xterm.js authors. All rights reserved.\n * Copyright (c) 2012-2013, Christopher Jeffrey (MIT License)\n * https://github.com/chjj/term.js\n * @license MIT\n *\n * Permission is hereby granted, free of charge, to any person obtaining a copy\n * of this software and associated documentation files (the \"Software\"), to deal\n * in the Software without restriction, including without limitation the rights\n * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n * copies of the Software, and to permit persons to whom the Software is\n * furnished to do so, subject to the following conditions:\n *\n * The above copyright notice and this permission notice shall be included in\n * all copies or substantial portions of the Software.\n *\n * THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n * THE SOFTWARE.\n *\n * Originally forked from (with the author's permission):\n *   Fabrice Bellard's javascript vt100 for jslinux:\n *   http://bellard.org/jslinux/\n *   Copyright (c) 2011 Fabrice Bellard\n *   The original design remains. The terminal itself\n *   has been extended to include xterm CSI codes, among\n *   other features.\n */\n\n/**\n *  Default styles for xterm.js\n */\n\n.xterm {\n    -webkit-font-feature-settings: \"liga\" 0;\n            font-feature-settings: \"liga\" 0;\n    position: relative;\n    -moz-user-select: none;\n         user-select: none;\n    -ms-user-select: none;\n    -webkit-user-select: none;\n}\n\n.xterm.focus,\n.xterm:focus {\n    outline: none;\n}\n\n.xterm .xterm-helpers {\n    position: absolute;\n    top: 0;\n    /**\n     * The z-index of the helpers must be higher than the canvases in order for\n     * IMEs to appear on top.\n     */\n    z-index: 5;\n}\n\n.xterm .xterm-helper-textarea {\n    /*\n     * HACK: to fix IE's blinking cursor\n     * Move textarea out of the screen to the far left, so that the cursor is not visible.\n     */\n    position: absolute;\n    opacity: 0;\n    left: -9999em;\n    top: 0;\n    width: 0;\n    height: 0;\n    z-index: -5;\n    /** Prevent wrapping so the IME appears against the textarea at the correct position */\n    white-space: nowrap;\n    overflow: hidden;\n    resize: none;\n}\n\n.xterm .composition-view {\n    /* TODO: Composition position got messed up somewhere */\n    background: #000;\n    color: #FFF;\n    display: none;\n    position: absolute;\n    white-space: nowrap;\n    z-index: 1;\n}\n\n.xterm .composition-view.active {\n    display: block;\n}\n\n.xterm .xterm-viewport {\n    /* On OS X this is required in order for the scroll bar to appear fully opaque */\n    background-color: #000;\n    overflow-y: scroll;\n    cursor: default;\n    position: absolute;\n    right: 0;\n    left: 0;\n    top: 0;\n    bottom: 0;\n}\n\n.xterm .xterm-screen {\n    position: relative;\n}\n\n.xterm .xterm-screen canvas {\n    position: absolute;\n    left: 0;\n    top: 0;\n}\n\n.xterm .xterm-scroll-area {\n    visibility: hidden;\n}\n\n.xterm-char-measure-element {\n    display: inline-block;\n    visibility: hidden;\n    position: absolute;\n    top: 0;\n    left: -9999em;\n    line-height: normal;\n}\n\n.xterm {\n    cursor: text;\n}\n\n.xterm.enable-mouse-events {\n    /* When mouse events are enabled (eg. tmux), revert to the standard pointer cursor */\n    cursor: default;\n}\n\n.xterm.xterm-cursor-pointer {\n    cursor: pointer;\n}\n\n.xterm.column-select.focus {\n    /* Column selection mode */\n    cursor: crosshair;\n}\n\n.xterm .xterm-accessibility,\n.xterm .xterm-message {\n    position: absolute;\n    left: 0;\n    top: 0;\n    bottom: 0;\n    right: 0;\n    z-index: 10;\n    color: transparent;\n}\n\n.xterm .live-region {\n    position: absolute;\n    left: -9999px;\n    width: 1px;\n    height: 1px;\n    overflow: hidden;\n}\n\n.xterm-dim {\n    opacity: 0.5;\n}\n\n.xterm-underline {\n    text-decoration: underline;\n}\n\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvbWluaS10ZXJtL3h0ZXJtLmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztFQStCRTs7QUFFRjs7RUFFRTs7QUFFRDtJQUNHLHVDQUErQjtZQUEvQiwrQkFBK0I7SUFDL0Isa0JBQWtCO0lBQ2xCLHNCQUFpQjtTQUFqQixpQkFBaUI7SUFDakIscUJBQXFCO0lBQ3JCLHlCQUF5QjtBQUM3Qjs7QUFFQTs7SUFFSSxhQUFhO0FBQ2pCOztBQUVBO0lBQ0ksa0JBQWtCO0lBQ2xCLE1BQU07SUFDTjs7O01BR0U7SUFDRixVQUFVO0FBQ2Q7O0FBRUE7SUFDSTs7O01BR0U7SUFDRixrQkFBa0I7SUFDbEIsVUFBVTtJQUNWLGFBQWE7SUFDYixNQUFNO0lBQ04sUUFBUTtJQUNSLFNBQVM7SUFDVCxXQUFXO0lBQ1gsc0ZBQXNGO0lBQ3RGLG1CQUFtQjtJQUNuQixnQkFBZ0I7SUFDaEIsWUFBWTtBQUNoQjs7QUFFQTtJQUNJLHVEQUF1RDtJQUN2RCxnQkFBZ0I7SUFDaEIsV0FBVztJQUNYLGFBQWE7SUFDYixrQkFBa0I7SUFDbEIsbUJBQW1CO0lBQ25CLFVBQVU7QUFDZDs7QUFFQTtJQUNJLGNBQWM7QUFDbEI7O0FBRUE7SUFDSSxnRkFBZ0Y7SUFDaEYsc0JBQXNCO0lBQ3RCLGtCQUFrQjtJQUNsQixlQUFlO0lBQ2Ysa0JBQWtCO0lBQ2xCLFFBQVE7SUFDUixPQUFPO0lBQ1AsTUFBTTtJQUNOLFNBQVM7QUFDYjs7QUFFQTtJQUNJLGtCQUFrQjtBQUN0Qjs7QUFFQTtJQUNJLGtCQUFrQjtJQUNsQixPQUFPO0lBQ1AsTUFBTTtBQUNWOztBQUVBO0lBQ0ksa0JBQWtCO0FBQ3RCOztBQUVBO0lBQ0kscUJBQXFCO0lBQ3JCLGtCQUFrQjtJQUNsQixrQkFBa0I7SUFDbEIsTUFBTTtJQUNOLGFBQWE7SUFDYixtQkFBbUI7QUFDdkI7O0FBRUE7SUFDSSxZQUFZO0FBQ2hCOztBQUVBO0lBQ0ksb0ZBQW9GO0lBQ3BGLGVBQWU7QUFDbkI7O0FBRUE7SUFDSSxlQUFlO0FBQ25COztBQUVBO0lBQ0ksMEJBQTBCO0lBQzFCLGlCQUFpQjtBQUNyQjs7QUFFQTs7SUFFSSxrQkFBa0I7SUFDbEIsT0FBTztJQUNQLE1BQU07SUFDTixTQUFTO0lBQ1QsUUFBUTtJQUNSLFdBQVc7SUFDWCxrQkFBa0I7QUFDdEI7O0FBRUE7SUFDSSxrQkFBa0I7SUFDbEIsYUFBYTtJQUNiLFVBQVU7SUFDVixXQUFXO0lBQ1gsZ0JBQWdCO0FBQ3BCOztBQUVBO0lBQ0ksWUFBWTtBQUNoQjs7QUFFQTtJQUNJLDBCQUEwQjtBQUM5QiIsImZpbGUiOiJzcmMvYXBwL21pbmktdGVybS94dGVybS5jc3MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIENvcHlyaWdodCAoYykgMjAxNCBUaGUgeHRlcm0uanMgYXV0aG9ycy4gQWxsIHJpZ2h0cyByZXNlcnZlZC5cbiAqIENvcHlyaWdodCAoYykgMjAxMi0yMDEzLCBDaHJpc3RvcGhlciBKZWZmcmV5IChNSVQgTGljZW5zZSlcbiAqIGh0dHBzOi8vZ2l0aHViLmNvbS9jaGpqL3Rlcm0uanNcbiAqIEBsaWNlbnNlIE1JVFxuICpcbiAqIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFpbmluZyBhIGNvcHlcbiAqIG9mIHRoaXMgc29mdHdhcmUgYW5kIGFzc29jaWF0ZWQgZG9jdW1lbnRhdGlvbiBmaWxlcyAodGhlIFwiU29mdHdhcmVcIiksIHRvIGRlYWxcbiAqIGluIHRoZSBTb2Z0d2FyZSB3aXRob3V0IHJlc3RyaWN0aW9uLCBpbmNsdWRpbmcgd2l0aG91dCBsaW1pdGF0aW9uIHRoZSByaWdodHNcbiAqIHRvIHVzZSwgY29weSwgbW9kaWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3VibGljZW5zZSwgYW5kL29yIHNlbGxcbiAqIGNvcGllcyBvZiB0aGUgU29mdHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29ucyB0byB3aG9tIHRoZSBTb2Z0d2FyZSBpc1xuICogZnVybmlzaGVkIHRvIGRvIHNvLCBzdWJqZWN0IHRvIHRoZSBmb2xsb3dpbmcgY29uZGl0aW9uczpcbiAqXG4gKiBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBhbmQgdGhpcyBwZXJtaXNzaW9uIG5vdGljZSBzaGFsbCBiZSBpbmNsdWRlZCBpblxuICogYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUgU29mdHdhcmUuXG4gKlxuICogVEhFIFNPRlRXQVJFIElTIFBST1ZJREVEIFwiQVMgSVNcIiwgV0lUSE9VVCBXQVJSQU5UWSBPRiBBTlkgS0lORCwgRVhQUkVTUyBPUlxuICogSU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBUSEUgV0FSUkFOVElFUyBPRiBNRVJDSEFOVEFCSUxJVFksXG4gKiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRSBBTkQgTk9OSU5GUklOR0VNRU5ULiBJTiBOTyBFVkVOVCBTSEFMTCBUSEVcbiAqIEFVVEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFHRVMgT1IgT1RIRVJcbiAqIExJQUJJTElUWSwgV0hFVEhFUiBJTiBBTiBBQ1RJT04gT0YgQ09OVFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5HIEZST00sXG4gKiBPVVQgT0YgT1IgSU4gQ09OTkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBPUiBUSEUgVVNFIE9SIE9USEVSIERFQUxJTkdTIElOXG4gKiBUSEUgU09GVFdBUkUuXG4gKlxuICogT3JpZ2luYWxseSBmb3JrZWQgZnJvbSAod2l0aCB0aGUgYXV0aG9yJ3MgcGVybWlzc2lvbik6XG4gKiAgIEZhYnJpY2UgQmVsbGFyZCdzIGphdmFzY3JpcHQgdnQxMDAgZm9yIGpzbGludXg6XG4gKiAgIGh0dHA6Ly9iZWxsYXJkLm9yZy9qc2xpbnV4L1xuICogICBDb3B5cmlnaHQgKGMpIDIwMTEgRmFicmljZSBCZWxsYXJkXG4gKiAgIFRoZSBvcmlnaW5hbCBkZXNpZ24gcmVtYWlucy4gVGhlIHRlcm1pbmFsIGl0c2VsZlxuICogICBoYXMgYmVlbiBleHRlbmRlZCB0byBpbmNsdWRlIHh0ZXJtIENTSSBjb2RlcywgYW1vbmdcbiAqICAgb3RoZXIgZmVhdHVyZXMuXG4gKi9cblxuLyoqXG4gKiAgRGVmYXVsdCBzdHlsZXMgZm9yIHh0ZXJtLmpzXG4gKi9cblxuIC54dGVybSB7XG4gICAgZm9udC1mZWF0dXJlLXNldHRpbmdzOiBcImxpZ2FcIiAwO1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICB1c2VyLXNlbGVjdDogbm9uZTtcbiAgICAtbXMtdXNlci1zZWxlY3Q6IG5vbmU7XG4gICAgLXdlYmtpdC11c2VyLXNlbGVjdDogbm9uZTtcbn1cblxuLnh0ZXJtLmZvY3VzLFxuLnh0ZXJtOmZvY3VzIHtcbiAgICBvdXRsaW5lOiBub25lO1xufVxuXG4ueHRlcm0gLnh0ZXJtLWhlbHBlcnMge1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICB0b3A6IDA7XG4gICAgLyoqXG4gICAgICogVGhlIHotaW5kZXggb2YgdGhlIGhlbHBlcnMgbXVzdCBiZSBoaWdoZXIgdGhhbiB0aGUgY2FudmFzZXMgaW4gb3JkZXIgZm9yXG4gICAgICogSU1FcyB0byBhcHBlYXIgb24gdG9wLlxuICAgICAqL1xuICAgIHotaW5kZXg6IDU7XG59XG5cbi54dGVybSAueHRlcm0taGVscGVyLXRleHRhcmVhIHtcbiAgICAvKlxuICAgICAqIEhBQ0s6IHRvIGZpeCBJRSdzIGJsaW5raW5nIGN1cnNvclxuICAgICAqIE1vdmUgdGV4dGFyZWEgb3V0IG9mIHRoZSBzY3JlZW4gdG8gdGhlIGZhciBsZWZ0LCBzbyB0aGF0IHRoZSBjdXJzb3IgaXMgbm90IHZpc2libGUuXG4gICAgICovXG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIG9wYWNpdHk6IDA7XG4gICAgbGVmdDogLTk5OTllbTtcbiAgICB0b3A6IDA7XG4gICAgd2lkdGg6IDA7XG4gICAgaGVpZ2h0OiAwO1xuICAgIHotaW5kZXg6IC01O1xuICAgIC8qKiBQcmV2ZW50IHdyYXBwaW5nIHNvIHRoZSBJTUUgYXBwZWFycyBhZ2FpbnN0IHRoZSB0ZXh0YXJlYSBhdCB0aGUgY29ycmVjdCBwb3NpdGlvbiAqL1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgICByZXNpemU6IG5vbmU7XG59XG5cbi54dGVybSAuY29tcG9zaXRpb24tdmlldyB7XG4gICAgLyogVE9ETzogQ29tcG9zaXRpb24gcG9zaXRpb24gZ290IG1lc3NlZCB1cCBzb21ld2hlcmUgKi9cbiAgICBiYWNrZ3JvdW5kOiAjMDAwO1xuICAgIGNvbG9yOiAjRkZGO1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgei1pbmRleDogMTtcbn1cblxuLnh0ZXJtIC5jb21wb3NpdGlvbi12aWV3LmFjdGl2ZSB7XG4gICAgZGlzcGxheTogYmxvY2s7XG59XG5cbi54dGVybSAueHRlcm0tdmlld3BvcnQge1xuICAgIC8qIE9uIE9TIFggdGhpcyBpcyByZXF1aXJlZCBpbiBvcmRlciBmb3IgdGhlIHNjcm9sbCBiYXIgdG8gYXBwZWFyIGZ1bGx5IG9wYXF1ZSAqL1xuICAgIGJhY2tncm91bmQtY29sb3I6ICMwMDA7XG4gICAgb3ZlcmZsb3cteTogc2Nyb2xsO1xuICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgcmlnaHQ6IDA7XG4gICAgbGVmdDogMDtcbiAgICB0b3A6IDA7XG4gICAgYm90dG9tOiAwO1xufVxuXG4ueHRlcm0gLnh0ZXJtLXNjcmVlbiB7XG4gICAgcG9zaXRpb246IHJlbGF0aXZlO1xufVxuXG4ueHRlcm0gLnh0ZXJtLXNjcmVlbiBjYW52YXMge1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiAwO1xuICAgIHRvcDogMDtcbn1cblxuLnh0ZXJtIC54dGVybS1zY3JvbGwtYXJlYSB7XG4gICAgdmlzaWJpbGl0eTogaGlkZGVuO1xufVxuXG4ueHRlcm0tY2hhci1tZWFzdXJlLWVsZW1lbnQge1xuICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHRvcDogMDtcbiAgICBsZWZ0OiAtOTk5OWVtO1xuICAgIGxpbmUtaGVpZ2h0OiBub3JtYWw7XG59XG5cbi54dGVybSB7XG4gICAgY3Vyc29yOiB0ZXh0O1xufVxuXG4ueHRlcm0uZW5hYmxlLW1vdXNlLWV2ZW50cyB7XG4gICAgLyogV2hlbiBtb3VzZSBldmVudHMgYXJlIGVuYWJsZWQgKGVnLiB0bXV4KSwgcmV2ZXJ0IHRvIHRoZSBzdGFuZGFyZCBwb2ludGVyIGN1cnNvciAqL1xuICAgIGN1cnNvcjogZGVmYXVsdDtcbn1cblxuLnh0ZXJtLnh0ZXJtLWN1cnNvci1wb2ludGVyIHtcbiAgICBjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi54dGVybS5jb2x1bW4tc2VsZWN0LmZvY3VzIHtcbiAgICAvKiBDb2x1bW4gc2VsZWN0aW9uIG1vZGUgKi9cbiAgICBjdXJzb3I6IGNyb3NzaGFpcjtcbn1cblxuLnh0ZXJtIC54dGVybS1hY2Nlc3NpYmlsaXR5LFxuLnh0ZXJtIC54dGVybS1tZXNzYWdlIHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgbGVmdDogMDtcbiAgICB0b3A6IDA7XG4gICAgYm90dG9tOiAwO1xuICAgIHJpZ2h0OiAwO1xuICAgIHotaW5kZXg6IDEwO1xuICAgIGNvbG9yOiB0cmFuc3BhcmVudDtcbn1cblxuLnh0ZXJtIC5saXZlLXJlZ2lvbiB7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIGxlZnQ6IC05OTk5cHg7XG4gICAgd2lkdGg6IDFweDtcbiAgICBoZWlnaHQ6IDFweDtcbiAgICBvdmVyZmxvdzogaGlkZGVuO1xufVxuXG4ueHRlcm0tZGltIHtcbiAgICBvcGFjaXR5OiAwLjU7XG59XG5cbi54dGVybS11bmRlcmxpbmUge1xuICAgIHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lO1xufVxuIl19 */"

/***/ })

}]);
//# sourceMappingURL=mini-term-mini-term-module-es5.js.map