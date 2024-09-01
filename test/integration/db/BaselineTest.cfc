component extends=testbox.system.BaseSpec {

    function run() {
        describe("Tests the DB", () => {
            it("can connect to the DB", () => {
                var result = queryExecute("SELECT CURDATE() AS `current_date`")
                expect(result).toHaveLength(1)
                expect(result.columnList.listFindNoCase("current_date")).toBeTrue()
                expect(result.current_date[1]).toBe(now().dateFormat("YYYY-MM-dd"))
            })
		})
    }
}
