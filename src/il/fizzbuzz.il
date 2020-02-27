.class public FizzBuzz.Class1
{
	.method public static void Main() cil managed
	{
		.maxstack 2
		.entrypoint
		.locals init (
			[0] int32 j,
			[1] string output
		)

		ldc.i4.1
		stloc.0

		FOR: 
		ldsfld string [System.Runtime] System.String::Empty
		stloc.1
		
		/* Fizz? */
		ldloc.0
		ldc.i4.3
		rem
		brtrue NOTFIZZ
		ldloc.1
		ldstr "Fizz"
		call string [System.Runtime] System.String::Concat(string, string)
		stloc.1

		NOTFIZZ:
		/* Buzz? */
		ldloc.0
		ldc.i4.5
		rem
		brtrue NOTBUZZ
		ldloc.1
		ldstr "Buzz"
		call string [System.Runtime] System.String::Concat(string, string)
		stloc.1

		NOTBUZZ:
		ldloc.1
		callvirt instance int32 [System.Runtime] System.String::get_Length()
		brfalse PRINTRESULT

		ldloca.s j
		call instance string [System.Runtime] System.Int32::ToString()
		stloc.1

		PRINTRESULT:
		ldloc.1
		call void [System.Console] System.Console::WriteLine(string)

		NEXT:
		ldloc.0
		ldc.i4.1
		add
		dup
		stloc.0
		ldc.i4.s 100
		cgt
		brfalse.s FOR

		ret
	}
}
