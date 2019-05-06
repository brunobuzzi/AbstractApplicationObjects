This class is used to store fields values of a external and internal sources. 
For example Orbeon Forms, external application/service or a Seaside application.
Field values from an external source come as Strings and must be converted to a proper type.
Field values from an internal source come as Smalltalk objects and no convertion is needed.

There are 3 scenarios here:
1) External source with values as Strings.
2) External source with values previously converted to Smalltalk objects.
3) Internal source with values as Smalltalk objects.

The scenario 2) is when AppFieldValue class>>convertToStValue: is used before the construction of the AppFieldValueHolder. 
In this case the holder receive the values already converted (this is the case of Orbeon Forms).