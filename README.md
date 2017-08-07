# select4review

This R function was written to help with double-checking data entry. Because data is manually entered from paper forms, we need to double-check that data entry was correct. Ideally, this would be done for every form, but realistically we only have time to check a subset of the data.

This R function takes an input array or list of form names, an array or list of the unique IDs for the study, and a percentage that you would like to double-check (for example, 20%), and returns a data frame of randomly sampled IDs for each form.

### Example
```
# Generate fake form names and fake IDs
> formNames <- c("form1", "form2", "form3")
> myIDs <- c(101:199)
> myIDs <- paste0("projectA-",myIDs)

# use function
> files2check <- select4review(formNames, myIDs, 20)

# output
> files2check
         form1        form2        form3
1  projectA-139 projectA-153 projectA-133
2  projectA-151 projectA-192 projectA-190
3  projectA-144 projectA-173 projectA-143
4  projectA-199 projectA-154 projectA-123
5  projectA-121 projectA-134 projectA-132
6  projectA-129 projectA-180 projectA-166
7  projectA-118 projectA-185 projectA-192
8  projectA-102 projectA-113 projectA-138
9  projectA-111 projectA-139 projectA-102
10 projectA-146 projectA-129 projectA-150
11 projectA-183 projectA-111 projectA-112
12 projectA-105 projectA-184 projectA-145
13 projectA-187 projectA-159 projectA-171
14 projectA-126 projectA-138 projectA-118
15 projectA-116 projectA-150 projectA-193
16 projectA-114 projectA-166 projectA-182
17 projectA-191 projectA-158 projectA-130
18 projectA-101 projectA-179 projectA-177
19 projectA-174 projectA-101 projectA-121
20 projectA-172 projectA-114 projectA-128
> 
```

### Credit/comments/questions
If you find this helpful or have any comments/questions, please let me know.
