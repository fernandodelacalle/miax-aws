import boto3

aws_region = "eu-west-1"
textract = boto3.client("textract", region_name=aws_region)

textract.start_document_text_detection(
    DocumentLocation={
        "S3Object": {
            "Bucket": "miaxtextractinput",
            "Name": "DNI.png"
        }
    },
    #NotificationChannel={"RoleArn": rolearn, "SNSTopicArn": snstarn},
    OutputConfig={
        "S3Bucket": "miaxtextractoutput",
        "S3Prefix": "textract_out_dni"
    },
)
