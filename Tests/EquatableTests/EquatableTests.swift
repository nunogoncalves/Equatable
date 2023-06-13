import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import EquatableMacros

let testMacros: [String: Macro.Type] = [
    "Equatable": EquatableMacro.self,
]

final class EquatableTests: XCTestCase {
    func testMacro() {
        assertMacroExpansion(
            """
            @Equatable
            class Foo {}
            """,
            expandedSource: """
            """,
            macros: testMacros
        )
    }
}
