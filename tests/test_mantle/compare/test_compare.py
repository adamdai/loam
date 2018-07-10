import pytest
import mantle
from ..harness import compare

def com(name, main):
    import magma
    from magma.testing import check_files_equal
    name += '_' + magma.mantle_target
    build = 'build/' + name
    gold = 'gold/' + name
    magma.compile(build, main)
    assert check_files_equal(__file__, build+'.v',   gold+'.v')
    if magma.mantle_target == 'ice40':
        assert check_files_equal(__file__, build+'.pcf', gold+'.pcf')
    elif magma.mantle_target in ['spartan3', 'spartan6']:
        assert check_files_equal(__file__, build+'.ucf', gold+'.ucf')


@pytest.mark.parametrize("op", [
    "EQ",
    "NE",
    "UGE",
    "UGT",
    "ULE",
    "ULT",
    "SGE",
    "SGT",
    "SLE",
    "SLT",
])
@pytest.mark.parametrize("width", [2,4])
def test_compare(op,width):
    Test = getattr(mantle, op)
    com(f'{op}{width}', compare(Test, width) )
