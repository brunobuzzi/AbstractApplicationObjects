other
canonizeWithNewKeys: collectionOfKeys
	"The receiver update it's <rootDistribution> to include the missing keys of collection <collectionOfKeys>"
	| dateKeys newDistribution |

	collectionOfKeys do: [:key | rootDistribution at: key put: 0]. "add the missing key to the main collection with 0 value"

	dateKeys := (rootDistribution keys collect: [:stringDate| Date fromString: stringDate]) asSortedCollection. "get ordered keys"

	newDistribution := OrderPreservingDictionary new.

	"rebuild and reorder the root distribution including missing keys"
	dateKeys do: [:eachDate | newDistribution at: eachDate printString put: (rootDistribution at: eachDate printString)]. 

	rootDistribution := newDistribution.