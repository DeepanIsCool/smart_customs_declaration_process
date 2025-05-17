module Customs::Declaration {
    use aptos_framework::signer;

    /// Struct representing a customs declaration.
    struct Declaration has store, key {
        id: u64,
        details: vector<u8>,
        approved: bool,
    }

    /// Submit a new customs declaration under sender's address.
    public fun submit_declaration(account: &signer, id: u64, details: vector<u8>) {
        let decl = Declaration { id, details, approved: false };
        move_to(account, decl);
    }

    /// Approve an existing declaration stored under sender's address.
    public fun approve_declaration(account: &signer) acquires Declaration {
        let addr = signer::address_of(account);
        let decl = borrow_global_mut<Declaration>(addr);
        assert!(!decl.approved, 1);
        decl.approved = true;
    }
}

