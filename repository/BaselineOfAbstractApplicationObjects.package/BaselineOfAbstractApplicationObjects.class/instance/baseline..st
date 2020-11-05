baseline
baseline: spec
   <baseline>
   spec
     for: #'common'
	do: [spec package: 'AbstractApplicationObjects'.
			spec package: 'AbstractTestFramework'.
			spec package: 'AbstractApplicationObjectsTests' with: [spec requires: #('AbstractApplicationObjects')].
		spec
			group: 'core' with: #('AbstractApplicationObjects');
			group: 'test-addon' with: #('AbstractTestFramework');
			group: 'test' with: #('AbstractApplicationObjectsTests');
			group: 'default' with: #('core' 'test' 'test-addon').
	]