(window.webpackJsonp=window.webpackJsonp||[]).push([[14],{306:function(t,e,n){"use strict";e.a={email:function(t){return/^.+@.+\..+/.test(t)},password:function(t){return this.notEmpty(t)},notEmpty:function(t){return t.length>0}}},380:function(t,e,n){"use strict";n.r(e);var o=n(51),r=n(90),i=n(0),a=n.n(i),c=n(306);var u=function(t){function e(){return function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,e),function(t,e){if(!t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!e||"object"!=typeof e&&"function"!=typeof e?t:e}(this,t.apply(this,arguments))}return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function, not "+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,t),e.prototype.onReady=function(){this.registerContactFormValidation()},e.prototype.registerContactFormValidation=function(){var t="form[data-contact-form]",e=Object(r.a)({submit:t+' input[type="submit"]'}),n=a()(t);e.add([{selector:t+' input[name="contact_email"]',validate:function(t,e){t(c.a.email(e))},errorMessage:this.context.contactEmail},{selector:t+' textarea[name="contact_question"]',validate:function(t,e){t(c.a.notEmpty(e))},errorMessage:this.context.contactQuestion}]),n.on("submit",function(t){e.performCheck(),e.areAll("valid")||t.preventDefault()})},e}(o.a);e.default=u}}]);
