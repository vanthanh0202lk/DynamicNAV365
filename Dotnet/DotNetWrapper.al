dotnet
{
    assembly(mscorlib)
    {
        type(System.DateTime; MyDateTime) { }
        type(System.Enum; MyEnum) { }
        type(System.String; MyString) { }
        type(System.Array; myArray) { }
    }
}