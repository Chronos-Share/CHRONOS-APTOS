
module MyNFT {
    use aptos_framework::coin;
    use aptos_framework::account;
    
    struct NFT {
        id: u64,
        owner: address,
    }
    
    public fun create_nft(account: &signer, id: u64) {
        let nft = NFT { id, owner: account::address_of(account) };
        move_to(account, nft);
    }
    
    public fun transfer_nft(account: &signer, id: u64, recipient: address) {
        let nft = borrow_global_mut<NFT>(account::address_of(account));
        assert!(nft.id == id, 1);
        assert!(nft.owner == account::address_of(account), 2);
        nft.owner = recipient;
    }
}
