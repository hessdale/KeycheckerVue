# define the function to decode a message file as per the question
def decode(message_file):
    key = message_file
    decoded_message = []
    # take numbers from the message file and sort them
    nums = [num for num, _ in message_file if isinstance(num, int)]  
    nums.sort()
    pyramid = 1
    right_side_numbers = set()
    # calculate right side numbers of the pyramid using an nth triangular number
    for num in nums:
        while pyramid * (pyramid + 1) // 2 < num:
            pyramid += 1
            right_side_numbers.add(pyramid * (pyramid + 1) // 2)
    # decode the message using right side numbers
    for num in nums:
        if num in right_side_numbers:
            for pair in key:
                if pair[0] == num:
                    decoded_message.append(pair[1])
                    break
    leftmost_number = min(nums)
    # add the word corresponding to the leftmost number to the beginning of the decoded message
    for pair in key:
        if pair[0] == leftmost_number:
            decoded_message.insert(0, pair[1]) 
            break
    # print the decoded message and return it
    print(decoded_message)
    return decoded_message

file_path = input("Enter the path of the file: ")

with open(file_path, "r") as file:
    lines = file.readlines()

message_file = []

# parse each line of the file to extract numbers and words, and store them in the message file
for line in lines:
    parts = line.strip().split()
    number = int(parts[0])
    word = "".join(parts[1:])
    message_file.append([number, word])

decode(message_file)