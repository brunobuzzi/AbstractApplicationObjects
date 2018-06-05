other
distributionKeysAsSortedCollectionAndValuesDo: aBlock
	| orderedKeys |

	orderedKeys := rootDistribution keys asSortedCollection.

	orderedKeys do: [:eachKey | | value |
		value := rootDistribution at: eachKey.
		aBlock value: eachKey value: value.
	].