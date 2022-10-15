import pandas as pd
import boto3
from boto3.dynamodb.conditions import Key


class DynamoHandle:

    def __init__(self, table_name):
        self.dynamodb = boto3.resource('dynamodb')
        self.table_name = table_name

    def create_table(self):
        table = self.dynamodb.create_table(
            TableName=self.table_name,
            KeySchema=[
                {
                    'AttributeName': 'VALOR',
                    'KeyType': 'HASH'  # Partition key
                },
                {
                    'AttributeName': 'TIME',
                    'KeyType': 'RANGE'  # Sort key
                }
            ],
            AttributeDefinitions=[
                {
                    'AttributeName': 'VALOR',
                    'AttributeType': 'S'
                },
                {
                    'AttributeName': 'TIME',
                    'AttributeType': 'S'
                },

            ],
            ProvisionedThroughput={
                'ReadCapacityUnits': 10,
                'WriteCapacityUnits': 10
            }
        )

    def load(self, record):
        table = self.dynamodb.Table(self.table_name)
        response = table.put_item(
            Item=record
        )

    def query(self):
        table = self.dynamodb.Table(self.table_name)
        response = table.query(
            KeyConditionExpression=Key('VALOR').eq('SAN')
        )
        return response


d_h = DynamoHandle(table_name='MARKET_DATA_2')

d_h.create_table()

data = pd.read_csv('../../../market_data/market_data_proc.csv')
records = data.to_dict(orient='records')
for record in records:
    record['PRECIO'] = str(record.get('PRECIO'))
    d_h.load(record)

result = d_h.query()
print(result)
