# create a notebook

API="http://localhost:4741"
URL_PATH="/notebooks"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "notebook": {
      "title": "'"${TITLE}"'",
      "date": "'"${DATE}"'",
      "body": "'"${BODY}"'"
    }
  }'

echo
