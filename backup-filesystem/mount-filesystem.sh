SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
MOUNT_DIR="$SCRIPT_DIR/mount/"
ENV_VARS="$SCRIPT_DIR/env_vars"
RESTIC_EXE="$SCRIPT_DIR/restic"

if [[ -d "$MOUNT_DIR" ]]
then
	echo "Mount directory $MOUNT_DIR already exists! Not mounting filesystem."
	exit 1
fi

if [[ ! -f "$RESTIC_EXE" ]]
then
	echo "No $RESTIC_EXE file exists on disk! Not mounting filesystem."
	exit 1
fi

if [[ ! -f "$ENV_VARS" ]]
then
	echo "No $ENV_VARS file exists on disk! Unable to connect to remote filesystem."
	exit 1
fi

source "$ENV_VARS"

if [ -z "$B2_ACCOUNT_ID" ];
then
	echo "No B2_ACCOUNT_ID provided in env vars! Unable to connect to remote filesystem."
	exit 1
fi

if [ -z "$B2_ACCOUNT_KEY" ];
then
	echo "No B2_ACCOUNT_KEY provided in env vars! Unable to connect to remote filesystem."
	exit 1
fi

if [ -z "$RESTIC_PASSWORD" ];
then
	echo "No RESTIC_PASSWORD provided in env vars! Unable to connect to remote filesystem."
	exit 1
fi

if [ -z "$B2_BUCKET_NAME" ];
then
	echo "No B2_BUCKET_NAME provided in env vars! Unable to connect to remote filesystem."
	exit 1
fi

if [ -z "$B2_BUCKET_PATH" ];
then
	echo "No B2_BUCKET_PATH provided in env vars! Unable to connect to remote filesystem."
	exit 1
fi

echo "Creating local mount directory: $MOUNT_DIR"
mkdir -p "$MOUNT_DIR"

if [ "$?" -ne "0" ];
then
	echo "Could not create local mount directory $MOUNT_DIR! Unable to connect to remote filesystem."
	exit 1
fi

echo "Mounting bucket $B2_BUCKET_NAME:$B2_BUCKET_PATH to $MOUNT_DIR"

"$RESTIC_EXE" -r "b2:$B2_BUCKET_NAME:$B2_BUCKET_PATH/" mount "$MOUNT_DIR"
RETURN_CODE=$?

echo "Restic returned code $RETURN_CODE"
echo "Cleaning up $MOUNT_DIR"
rmdir "$MOUNT_DIR"

exit $RETURN_CODE
