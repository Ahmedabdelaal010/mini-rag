from enum import Enum


class ResponseSignal(Enum):

    FILE_VALIDATED_SUCCESS = "file_validate_successfully"
    FILE_TYPE_NOT_SUPPORTED = "file_type_not_supported"
    FILE_SIZE_EXCEEDED = "file_size_exceeded"
    FILE_UPLOAD_SUCCESS = "success"
    FILE_UPLOADED_FAILED = "file_uploaded_failed"
    PROCESSING_SUCCESS = "processing success"
    PROCESSING_FAILED = "processing_failed"
    