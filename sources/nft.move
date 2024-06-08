
module my_addrx::NFT {
    use aptos_framework::account;
    use aptos_framework::coin;
    use aptos_framework::event;
    use aptos_framework::account::address_of;

    struct NFT {
        id: u64,
        owner: address,
    }

    public fun create_nft(account: &signer, id: u64) {
        let nft = NFT { id, owner: address_of(account) };
        move_to(account, nft);
    }

    public fun transfer_nft(account: &signer, id: u64, recipient: address) {
        let nft = borrow_global_mut<NFT>(address_of(account));
        assert!(nft.id == id, 1);
        assert!(nft.owner == address_of(account), 2);
        nft.owner = recipient;
    }
}
