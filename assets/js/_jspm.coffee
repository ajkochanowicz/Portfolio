# JSPM

jspm.config
	endpoints:
		ks:
			location: './apps'
			normalize: (name) ->
				name = name + '/main' if (name.split('/').length == 1)
				return name
	map:
		'jquery': 			'jquery@2.0'
		'bootstrap': 		'github:twbs/bootstrap@3.0.2/js/bootstrap'
		'angular': 			'angular@1.2.1/angular'
		'angularFire': 		'angularFire@0.3.1'
		'ang-app': 			'ks:ang-app'
		'angular-route':	'ks:ang-app/resources/angular-route'
		'gatedScope':		'ks:ang-app/resources/gatedScope'
		'ng-progress':		'ks:ang-app/resources/ng-progress'
		'fontawesome': 		'cdnjs:font-awesome/4.0.1/css/font-awesome.min.css!'
	shim: 
		'cdnjs:angular.js/1.2.1/angular':
			exports: 'angular'
		'ks:ang-app/resources/angular-route': 	['angular@1.2.1/angular']
		'ks:ang-app/resources/gatedScope': 		['angular@1.2.1/angular', 'ks:ang-app/resources/scalyr-helpers']
		'ks:ang-app/resources/ng-progress': 	['angular@1.2.1/angular']
