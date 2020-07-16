const Problem4 = artifacts.require('Problem4');

contract('Problem4', () => {
    const projectEulerSolution = 906609
    it(`should return ${projectEulerSolution}`, async() => {
        const problem4 = await Problem4.deployed()
        const result = await problem4.productOfThreeDigits({gas:300000000})
        assert.strictEqual(result.words[0], projectEulerSolution)
    })
})