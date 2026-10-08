from alembic import op


revision = '1231fa787417'
down_revision = '4e5c4fb944d1'
branch_labels = None
depends_on = None


def upgrade() -> None:
    op.alter_column(
        'celery_task_executions',
        'exection_id',
        new_column_name='execution_id'
    )


def downgrade() -> None:
    op.alter_column(
        'celery_task_executions',
        'execution_id',
        new_column_name='exection_id'
    )