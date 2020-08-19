.assembly FizzBuzz
{
}

.assembly extern mscorlib { }

.namespace FizzBuzz
{
	.class private auto ansi beforefieldinit MainClass
	{
		.method public hidebysig static void Main() cil managed
		{
			.entrypoint
			.maxstack  3
			.locals init (
				[0] int32 j,
				[1] bool neither
			)

			ldc.i4.1
			stloc.0

			FOR:

			/* Fizz? */
			ldloc.0
			ldc.i4.3
			ldstr "Fizz"
			call bool FizzBuzz.MainClass::TryVal(int32, int32, string)
			stloc.1

			/* Buzz? */
			ldloc.0
			ldc.i4.5
			ldstr "Buzz"
			call bool FizzBuzz.MainClass::TryVal(int32, int32, string)
			brfalse.s NOTBUZZ
			ldc.i4.1
			stloc.1
			NOTBUZZ:

			ldloc.1
			brtrue NEXT
			ldloca.s j
			call instance string [System.Runtime] System.Int32::ToString()
			call void [System.Console] System.Console::Write(string)

			NEXT:
			call void [System.Console] System.Console::WriteLine()
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

		.method	private static bool TryVal(int32 j, int32 val, string word) cil managed
		{
			.maxstack 2

			ldarg.0
			ldarg.1
			rem
			brtrue NOTTHIS
			
			ldarg.2
		    call void [System.Console] System.Console::Write(string)
			ldc.i4.1
			ret

			NOTTHIS:
			ldc.i4.0
			ret
		}
	}
}
