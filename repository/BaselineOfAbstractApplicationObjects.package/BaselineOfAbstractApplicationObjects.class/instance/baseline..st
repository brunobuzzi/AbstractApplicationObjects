baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'AbstractApplicationObjects'
        with: [ spec repository: 'github://brunobuzzi/AbstractApplicationObjects:master' ].
      spec import: 'AbstractApplicationObjects'.
      spec
        package: 'AbstractApplicationObjects'
        with: [ spec requires: 'AbstractApplicationObjects' ] ]