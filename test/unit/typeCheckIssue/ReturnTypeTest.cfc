import testbox.system.BaseSpec
import fixtures.UsesImport
import fixtures.UsesFullyQualifiedReturnType

component extends=BaseSpec {

    function run() {
        describe("Tests something", () => {
            it("doesn't error when the returned object type is com.corp.app1.Something and returntype Something uses an import of com.corp.app1.Something", () => {
                sut = new UsesImport()
                something = new com.corp.app1.Something()

                expect(sut.returnsComSomething(something)).toBeInstanceOf("com.corp.app1.Something")

            })

            it("does error when the returned object type is org.group.app2.Something and returntype Something uses an import of com.corp.app1.Something", () => {
                sut = new UsesImport()
                something = new org.group.app2.Something()

                expect(() => sut.returnsComSomething(something)).toThrow()
            })

            it("doesn't error when the returned object type is com.corp.app1.Something and returntype Something uses an import of com.corp.app1.Something", () => {
                sut = new UsesFullyQualifiedReturnType()
                something = new com.corp.app1.Something()

                expect(sut.returnsComSomething(something)).toBeInstanceOf("com.corp.app1.Something")

            })

            it("does error when the returned object type is org.group.app2.Something and returntype Something uses an import of com.corp.app1.Something", () => {
                sut = new UsesFullyQualifiedReturnType()
                something = new org.group.app2.Something()

                expect(() => sut.returnsComSomething(something)).toThrow()
            })

        })
    }
}
