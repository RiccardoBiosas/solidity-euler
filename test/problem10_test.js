const Problem10 = artifacts.require('Problem10');

contract('Problem10', () => {
    // const projectEulerSolution = 142913828922
    const projectEulerSolution = 17
    it(`should return ${projectEulerSolution}`, async() => {
        const problem10 = await Problem10.deployed()
        const result = await problem10.erathosteneSieveAndSum({gas:300000000})
        assert.strictEqual(result.words[0], projectEulerSolution)
    })
})