select
    round(
        1.0 
        *
        count(
            case
                when status = 'closed' then 1
            end
        )
        /
        count(*)
        , 2
    ) as closed_ratio
from fb_account_status
where date = '2020-01-10'
