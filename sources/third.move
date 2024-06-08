
module my_addrx::A
{
    friend my_addrx::B;

    public(friend) fun A_foo(): u8
    {
        return 1
    }
}

module my_addrx::B
{
    use std::debug::print;

    fun B_foo(): u8
    {
        return my_addrx::A::A_foo()
    }

    #[test]
    fun testing()
    {
        let a = B_foo();
        print(&a);
    }
}