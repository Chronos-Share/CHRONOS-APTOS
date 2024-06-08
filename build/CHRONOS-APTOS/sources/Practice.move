

module my_addrx::Practice
{
    use std::debug::print;

    fun primitive_types()
    {
        let a:u8 = 10;
        print(&a);
        let b:u16 = 1234;
        print(&b);
        let c:u32 = 12345;
        print(&c);
        let d:u64 = 123456;
        print(&d);
        let e:u128 = 123_456_722;
        print(&e);

        let a:bool = true;
        print(&a);

        let address1:address = @my_addrx;
        print(&address1);
        let address2:address = @0x134;
        print(&address2);
    }

    #[test]
    fun test_primitive_types()
    {
        primitive_types();
    }
}