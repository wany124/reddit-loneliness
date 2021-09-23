# Subreddit Statistics

## Data

- Terms:
  - submission: the initial post of a thread
  - comment: the replies after a submission
- Data statistics:

| Subreddit      | #submissions (non-empty) | #comments (non-empty) | Created Date | #members |
| :------------- | ------------------------ | --------------------- | ------------ | -------- |
| r/lonely       | 110937                   | 738710                | 7/3/2008     | 237k     |
| r/ForeverAlone | 97254                    | 2054757               | 9/15/2010    | 162k     |
| r/loneliness   | 3964                     | 21909                 | 3/16/2010    | 9.5k     |
| r/isolation    | 74                       | 187                   | 6/17/2010    | 335      |

- Available fields: 

  - submission: 

    ```
    'subreddit','created_utc','id','title','author','author_fullname','num_comments','upvote_ratio','num_crossposts','over_18','total_awards_received','selftext', 'domain', 'full_link', 'permalink'
    ```

  - comment:

    ```
    'subreddit', 'created_utc', 'id', 'link_id', 'parent_id', 'author','author_fullname', 'body', 'collapsed', 'is_submitter', 'no_follow','permalink'
    ```

- File size: ~1.2GB

## Post statistics

### #submission, #comments by year

<img src="data-stats/num-by-year.png">

### #comments/submission by subreddit

<img src="data-stats/comment-per-sub.png">



## User engagement statistics





### #submission & #comments per user distribution

