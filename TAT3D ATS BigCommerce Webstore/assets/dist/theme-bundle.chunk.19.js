(window.webpackJsonp=window.webpackJsonp||[]).push([[19],{383:function(e,t,o){"use strict";o.r(t);var r=o(5),a=o(331),i=o(0),n=o.n(i),s=o(333),c=o(332),d=o(328),l=o.n(d),h=o(327),u=(o(369),o(90));var p=function(e){function t(){return function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,t),function(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}(this,e.apply(this,arguments))}return function(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}(t,e),t.prototype.formatCategoryTreeForJSTree=function(e){var t=this,o={text:e.data,id:e.metadata.id,state:{selected:e.selected}};return e.state&&(o.state.opened="open"===e.state,o.children=!0),e.children&&(o.children=[],e.children.forEach(function(e){o.children.push(t.formatCategoryTreeForJSTree(e))})),o},t.prototype.showProducts=function(){var e=c.a.replaceParams(window.location.href,{section:"product"});this.$productListingContainer.removeClass("u-hiddenVisually"),this.$facetedSearchContainer.removeClass("u-hiddenVisually"),this.$contentResultsContainer.addClass("u-hiddenVisually"),c.a.goToUrl(e)},t.prototype.showContent=function(){var e=c.a.replaceParams(window.location.href,{section:"content"});this.$contentResultsContainer.removeClass("u-hiddenVisually"),this.$productListingContainer.addClass("u-hiddenVisually"),this.$facetedSearchContainer.addClass("u-hiddenVisually"),c.a.goToUrl(e)},t.prototype.onReady=function(){var e=this,t=n()("[data-advanced-search-form]"),o=t.find("[data-search-category-tree]"),a=l.a.parse(window.location.href,!0),i=[];this.$productListingContainer=n()("#product-listing-container"),this.$facetedSearchContainer=n()("#faceted-search-container"),this.$contentResultsContainer=n()("#search-results-content"),n()("#facetedSearch").length>0?this.initFacetedSearch():(this.onSortBySubmit=this.onSortBySubmit.bind(this),r.c.on("sortBy-submitted",this.onSortBySubmit)),this.sidebar_mobile(),this.category_sidebar(),Object(h.b)(),n()("[data-product-results-toggle]").on("click",function(t){t.preventDefault(),e.showProducts()}),n()("[data-content-results-toggle]").on("click",function(t){t.preventDefault(),e.showContent()}),0===this.$productListingContainer.find("li.product").length||"content"===a.query.section?this.showContent():this.showProducts();var s=this.initValidation(t).bindValidation(t.find("#search_query_adv"));this.context.categoryTree.forEach(function(t){i.push(e.formatCategoryTreeForJSTree(t))}),this.categoryTreeData=i,this.createCategoryTree(o),t.on("submit",function(e){var r=o.jstree().get_selected();if(!s.check())return e.preventDefault();t.find('input[name="category[]"]').remove();var a=r,i=Array.isArray(a),c=0;for(a=i?a:a[Symbol.iterator]();;){var d;if(i){if(c>=a.length)break;d=a[c++]}else{if((c=a.next()).done)break;d=c.value}var l=d,h=n()("<input>",{type:"hidden",name:"category[]",value:l});t.append(h)}})},t.prototype.loadTreeNodes=function(e,t){var o=this;n.a.ajax({url:"/remote/v1/category-tree",data:{selectedCategoryId:e.id,prefix:"category"}}).done(function(e){var r=[];e.forEach(function(e){r.push(o.formatCategoryTreeForJSTree(e))}),t(r)})},t.prototype.createCategoryTree=function(e){var t=this,o={core:{data:function(e,o){"#"===e.id?o(t.categoryTreeData):t.loadTreeNodes(e,o)},themes:{icons:!0}},checkbox:{three_state:!1},plugins:["checkbox"]};e.jstree(o)},t.prototype.initFacetedSearch=function(){var e=n()("#product-listing-container"),t=n()("#faceted-search-container"),o=n()("#search-results-heading"),r=n()("#search-results-product-count"),a={template:{productListing:"search/product-listing",sidebar:"search/sidebar",heading:"search/heading",productCount:"search/product-count"},config:{product_results:{limit:this.context.searchProductsPerPage}},showMore:"search/show-more"};this.facetedSearch=new s.a(a,function(a){e.html(a.productListing),t.html(a.sidebar),o.html(a.heading),r.html(a.productCount),n()("html, body").animate({scrollTop:0},100)})},t.prototype.initValidation=function(e){return this.$form=e,this.validator=Object(u.a)({submit:e}),this},t.prototype.bindValidation=function(e){return this.validator&&this.validator.add({selector:e,validate:"presence",errorMessage:e.data("errorMessage")}),this},t.prototype.check=function(){return!!this.validator&&(this.validator.performCheck(),this.validator.areAll("valid"))},t.prototype.category_sidebar=function(){n()(".all-categories-list").length>0&&n()(".all-categories-list .icon-dropdown").on("click",function(){var e=n()(this).parent();e.siblings().removeClass("is-clicked"),e.toggleClass("is-clicked"),e.siblings().find("> .dropdown-category-list").slideUp("slow"),e.find("> .dropdown-category-list").slideToggle("slow")})},t.prototype.sidebar_mobile=function(){n()(".page-sidebar").length>0&&(n()(".page-sidebar").clone().appendTo(n()("#sidebar-mobile .themevale_MobileContent")),n()(".themevale_sidebar-mobile").on("click",function(e){n()("body").addClass("themevale_open-Sidebar")}),n()("#sidebar-mobile .themevale_close").on("click",function(e){n()("body").removeClass("themevale_open-Sidebar")}),n()(".bg-mobile").on("click",function(e){n()("body").hasClass("themevale_open-Sidebar")&&n()("body").removeClass("themevale_open-Sidebar")}))},t}(a.a);t.default=p}}]);
