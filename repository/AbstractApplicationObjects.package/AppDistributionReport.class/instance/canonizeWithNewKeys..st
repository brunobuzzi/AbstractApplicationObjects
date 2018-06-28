other
canonizeWithNewKeys: collectionOfKeys
	| dateKeys newDistribution |

	collectionOfKeys do: [:key | rootDistribution at: key put: 0].

	dateKeys := (rootDistribution keys collect: [:stringDate| Date fromString: stringDate]) asSortedCollection.

	newDistribution := OrderPreservingDictionary new.

	dateKeys do: [:eachDate | newDistribution at: eachDate printString put: (rootDistribution at: eachDate printString)].

	rootDistribution := newDistribution.