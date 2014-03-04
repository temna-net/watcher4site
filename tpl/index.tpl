<!doctype html><html lang="{$lang}" ng-app="genteeApp" ng-controller="GenteeCtrl" ><head>    <meta charset="utf-8">    <link rel="icon" href="favicon.ico" type="image/x-icon" />     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />    <title>{{cfg.title}}</title>  	    <link rel="stylesheet/less" type="text/css" href="css/gentee.less" />  	<script src="js/less.min.js" type="text/javascript"></script>    <script src="js/jquery.min.js" type="text/javascript"></script>  </head>  <body><div id="main" ge-main="0"><div id="top">    <span ng-bind-html="cfg.apphead"></span>   <div  style="float:right;margin-bottom: 8px;">        <b>{{cfg.user.login}}</b>       <div ng-show="cfg.user" class="btn-group">         <a href="#/settings" class="btn" ><i class="fa fa-cog"></i>{{lng.settings}}</a>         <a href="" class="btn" ng-click="logout()"><i class="fa fa-power-off"></i>{{lng.logout}}</a>       </div>  </div></div><div id="header">    <div id="info" >         <b><a href="http://{{cfg.website}}" target="_blank">{{cfg.website}}</a>&nbsp;&middot;&nbsp;</b>{{lng.info}}    </div> </div>      <div class="horzmenu" ng-show="cfg.user">        <a href="{{imenu.href}}" class="imenu" ng-class="{iactive:$routeSegment.name == imenu.name}"   ng-repeat="imenu in menu"><i ng-show="imenu.icon" class="fa fa-{{imenu.icon}} fa-fw"></i>&nbsp;&nbsp;{{imenu.title}}</a>    </div><div id="content" app-view-segment="0"></div></div><!-- #main --><div id="footer" >    <a href="http://{{cfg.website}}">{{cfg.appname}}</a> v{{cfg.version}} <b>&middot;</b> {{lng.owner}} <b>&middot;</b> {{lng.license}} <a target="_blank" href="http://opensource.org/licenses/mit-license.html">MIT License</a></div><div ng-show="loading" class="loading">   <img src="images/ajax-loader.gif"><span>{{lng.loading}}...</span></div><script type="text/ng-template" id="dialog.html">    <a href="" class="close" ng-click="cancel()"><i class="fa fa-times fa-lg"></i></a>    <div class="modal-header">        <h3>{{dlg.title}}</h3>    </div>    <div class="modal-body"  stylex="background-color:#FFD1D1" ng-if="!dlg.template">       <i ng-show="dlg.icon" class="fa {{dlg.icon}} fa-2x pull-left fa-border {{dlg.icon_class}}"></i>       {{dlg.body}}    </div>    <div class="modal-body" ng-include="dlg.template" ng-if="dlg.template">    </div>    <div class="modal-footer">        <!--button class="btn" ng-click="ok()" ng-show="ok">OK</button-->        <button ng-repeat="ibtn in dlg.btns" class="btn {{ibtn.class}}" ng-click="button( ibtn )">{{ibtn.text}}</button>    </div></script><script type="text/javascript">var cfg = {$cfg};var langlist = {$langlist};/*$(document).ready(function() {})*/</script>  <script src="js/angular/angular.min.js" type="text/javascript"></script>    <script src="js/angular/i18n/angular-locale_{$lang}.js"></script>    <script id="langjs" src="{$appname}/l10n/locale_{$lang}.js"></script>    <script src="js/angular/angular-cookies.min.js" type="text/javascript"></script>    <script src="js/angular/angular-route.min.js" type="text/javascript"></script>    <script src="js/angular/angular-route-segment.min.js" type="text/javascript"></script>    <script src="js/ui-bootstrap-custom-tpls-0.6.0.min.js" type="text/javascript"></script>    <script src="js/jquery-ui-sortable.min.js" type="text/javascript"></script>     <script src="js/angular-lib.js" type="text/javascript"></script>    <script src="{$appname}/gentee.js" type="text/javascript"></script>    <script src="{$appname}/controllers.js" type="text/javascript"></script>    <script src="js/directives.js" type="text/javascript"></script>    <!--script src="js/filters.js" type="text/javascript"></script--></body></html>