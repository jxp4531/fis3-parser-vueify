;<%
if(!options.extractCss){%>
var __vueify_style_dispose__ = require("./insert-css").insert("<%=data.styles.reduce(function(a,b){ return a + '\n'+ JSON.stringify(b.content);}, "")%>");
<%}%>

(function(){
	<%=data.script.content%>
})();

if (module.exports.__esModule) module.exports = module.exports.default

var __vue__options__ = (typeof module.exports === "function"? module.exports.options: module.exports);
<%if(data.template.content) {%>
if (__vue__options__.functional) {console.warn("[vueify] functional components are not supported and should be defined in plain js files using render functions.")}
__vue__options__.render = <%=data.template.render%>;
__vue__options__.staticRenderFns = <%=data.template.staticRenderFns%>;

<%}%>
<%if(scopeId){%>
__vue__options__._scopeId = "<%=scopeId%>";
<%}%>
