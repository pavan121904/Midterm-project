import json
import boto3

dynamodb = boto3.resource('dynamodb')  # Remove the space after 'dynamodb'
table = dynamodb.Table('website-121904')

def lambda_handler(event, context):
    response = table.get_item(Key={  # 'key' should be 'Key'
        'id': '0'
    })
    item = response.get('Item')  # Use 'get' to handle potential missing key 'Item'
    if item:
        views = item.get('views', 0)  # Initialize views to 0 if 'views' doesn't exist
        views += 1
        print(views)

        response = table.put_item(Item={  # Add a comma after 'id':'1'
            'id': '1',  # Add a comma to separate 'id' and 'views'
            'views': views
        })
        return views
    else:
        return 0  # Return 0 if the item with 'id' 0 doesn't exist
