baseline
baseline: spec
   <baseline>
   spec
     for: #'common'
	do: [spec package: 'AbstractApplicationObjects'.
			spec package: 'AbstractApplicationObjectsTests' with: [spec requires: #('AbstractApplicationObjects')].
		spec
			group: 'core' with: #('AbstractApplicationObjects');
			group: 'test' with: #('AbstractApplicationObjectsTests');
			group: 'default' with: #('core' 'test').
	]