<?php

return [

	// The default gateway to use
	'default' => 'paypal',

	// Add in each gateway here
	'gateways' => [
		'paypal' => [
			'driver'  => 'PayPal_Express',
			'options' => [
				'username'  => 'jwei19943-facilitator_api1.gmail.com',
				'password'  => 'VJKLFC6M95C7SZYG',
				'signature' => 'AcO7aGGtjJ7YOLxqKfdALOPoyKeLArtl7DEK5PhQLA5P0EiYhzrypYBI',
				'solutionType' => '',
				'landingPage'    => '',
				'headerImageUrl' => '',
				'brandName' =>  'AOLP',
				'testMode' => true
			]
		]
	]

];
