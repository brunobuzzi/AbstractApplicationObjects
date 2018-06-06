queries
getAllCategories
	| allCategories |

	allCategories := OrderedCollection new.

	reports do: [:each | allCategories addAll: each categories].

	^allCategories