___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Mouseflow Session Playback URL",
  "description": "Retrieves the Mouseflow session playback URL for the current user session, allowing you to send it to your preferred destinations.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "mfSiteID",
    "displayName": "Enter Your Mouseflow Website ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "A website id is a 32 or more character, alphanumeric string that allows you to identify the website that is currently being recorded.",
    "valueHint": "e.g, 77126e56-b718-42f7-92fa-b1b151102423"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const callInWindow = require('callInWindow');
const makeString = require('makeString');
const getType = require('getType');

let websiteId = makeString(data.mfSiteID);
if (!websiteId || getType(websiteId) === 'undefined' || websiteId === '') {
  websiteId = callInWindow('mouseflow.websiteId');
}

const sessionId = callInWindow('mouseflow.getSessionId');

if (getType(websiteId) === 'undefined' || websiteId === null || websiteId === '' || 
    getType(sessionId) === 'undefined' || sessionId === null || sessionId === '') {
  return undefined;
}

const mouseFlowURL = 'https://app.mouseflow.com/websites/' + makeString(websiteId) + '/recordings/' + makeString(sessionId) + '/play';
return mouseFlowURL;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "mouseflow.websiteId"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "mouseflow.getSessionId"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 2/24/2025, 1:20:28 PM


