from pydantic import BaseModel     # BaseModel : this the base sturcture for any schemes
from typing import Optional


class ProcessRequest(BaseModel):

    file_id: str = None   # if not exist take the value None
    chunk_size: Optional[int] = 100
    overlap_size: Optional[int] = 20
    do_reset: Optional[int] = 0    # true or false 
    
