
"""No-op migration placeholder for Celery task executions.

Revision ID: 2e099dfcefe4
Revises: 50565fe13c58
"""

from typing import Sequence, Union

# revision identifiers, used by Alembic.
revision: str = "2e099dfcefe4"
down_revision: Union[str, None] = "50565fe13c58"
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    # The following migration creates celery_task_executions.
    # Do not drop the vector collection tables here.
    pass


def downgrade() -> None:
    # This migration does not modify the database schema.
    pass
