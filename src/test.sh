EXPECTED = "Hello, World!"

OUTPUT = $(node -e "console.log(require('./src/app')('Test'))")

if [ "$EXPECTED" == "$OUTPUT" ]; then
  echo "Test passed!"
  exit 0
else
  echo "Test failed!"
  echo "Expected: $EXPECTED"
  echo "Got: $OUTPUT"
  exit 1
fi