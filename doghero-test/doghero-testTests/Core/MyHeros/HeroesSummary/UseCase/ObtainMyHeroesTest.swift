import XCTest

class ObtainMyHeroesTest: XCTestCase {
    var receiver: MyHeroesReceiverMock?

    override func setUp() {
        super.setUp()

        self.receiver = MyHeroesReceiverMock()
    }

    override func tearDown() {
        self.receiver = nil

        super.tearDown()
    }

    func testObtainListMyHeroesSummarySuccessfully() {
        let providerMock = MyHeroesProviderMock()
        let obtainListMyHeroes = ObtainMyHeroes(provider: providerMock,
                                                receiver: self.receiver!)

        obtainListMyHeroes.execute()

        XCTAssert(providerMock.callsToAvailableMyHeroesSummary == 1,
                  "There should be at least 1 call to provider's available obtain my heroes summary.")
        XCTAssert(self.receiver?.callsToReceiverMyHeroesSummary == 1,
                  "There should be at least 1 call to receiver's main method - Successfully.")
    }

    func testObtainListMyHeroesSummaryFailure() {
        let providerMock = MyHeroesProviderMockFailure()
        let obtainListMyHeroes = ObtainMyHeroes(provider: providerMock,
                                                receiver: self.receiver!)

        obtainListMyHeroes.execute()

        XCTAssert(providerMock.callsToAvailableMyHeroesSummary == 1,
                  "There should be at least 1 call to provider's available obtain my heroes summary.")
        XCTAssert(self.receiver?.callsToHandleErrorObtainingMyHeroesSummary == 1,
                  "There should be at least 1 call to receiver's main method - Failure.")
    }
}
