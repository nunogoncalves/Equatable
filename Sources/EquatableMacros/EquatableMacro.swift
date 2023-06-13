import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct EquatableMacro: ConformanceMacro {
    public static func expansion<Declaration, Context>(
        of node: AttributeSyntax,
        providingConformancesOf declaration: Declaration,
        in context: Context
    ) throws -> [(TypeSyntax, GenericWhereClauseSyntax?)]
    where Declaration: DeclGroupSyntax, Context: SwiftSyntaxMacros.MacroExpansionContext
    {

        return [("Equatable", nil)]
    }
}

@main
struct EquatablePlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        EquatableMacro.self,
    ]
}
