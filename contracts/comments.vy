# @title Comments From The ETHer
# @dev Unfortunately, the String[] type does not allow for any commas.
# @author Narisa

event MakeAPost:
    e_sender: indexed(address)
    e_post_num: indexed(uint256)
    e_string: indexed(String[69])

your_post: public(String[69])
post_count: public(uint256)
user_addr: public(address)

@external
def __init__():
    self.post_count = 0

@external
def make_post(_your_post: String[69]):
    self.your_post = _your_post
    self.user_addr = msg.sender
    self.post_count += 1

    log MakeAPost(self.user_addr, self.post_count, self.your_post)