package Koha::Exceptions;

use Modern::Perl;

use Koha::Exception;

use Exception::Class (

    'Koha::Exceptions::BadParameter' => {
        isa => 'Koha::Exception',
        description => 'A bad parameter was given',
        fields => ['parameter'],
    },
    'Koha::Exceptions::DuplicateObject' => {
        isa => 'Koha::Exception',
        description => 'Same object already exists',
    },
    'Koha::Exceptions::ObjectNotFound' => {
        isa => 'Koha::Exception',
        description => 'The required object doesn\'t exist',
    },
    'Koha::Exceptions::ObjectNotCreated' => {
        isa => 'Koha::Exception',
        description => 'The object have not been created',
    },
    'Koha::Exceptions::CannotDeleteDefault' => {
        isa => 'Koha::Exception',
        description => 'The default value cannot be deleted'
    },
    'Koha::Exceptions::MissingParameter' => {
        isa => 'Koha::Exception',
        description => 'A required parameter is missing'
    },
    'Koha::Exceptions::ParameterTooHigh' => {
        isa => 'Koha::Exception',
        description => 'A passed parameter value is too high'
    },
    'Koha::Exceptions::NoChanges' => {
        isa => 'Koha::Exception',
        description => 'No changes were made',
    },
    'Koha::Exceptions::WrongParameter' => {
        isa => 'Koha::Exception',
        description => 'One or more parameters are wrong',
    },
    'Koha::Exceptions::NoPermission' => {
        isa => 'Koha::Exception',
        description => 'You do not have permission for this action',
    },
    'Koha::Exceptions::CannotAddLibraryLimit' => {
        isa => 'Koha::Exception',
        description => 'General problem adding a library limit'
    },
    'Koha::Exceptions::UnderMaintenance' => {
        isa => 'Koha::Exception',
        description => 'Koha is under maintenance.'
    },
    # Virtualshelves exceptions
    'Koha::Exceptions::Virtualshelves::DuplicateObject' => {
        isa => 'Koha::Exceptions::DuplicateObject',
        description => "Duplicate shelf object",
    },
    'Koha::Exceptions::Virtualshelves::InvalidInviteKey' => {
        isa => 'Koha::Exception',
        description => 'Invalid key on accepting the share',
    },
    'Koha::Exceptions::Virtualshelves::InvalidKeyOnSharing' => {
        isa => 'Koha::Exception',
        description=> 'Invalid key on sharing a shelf',
    },
    'Koha::Exceptions::Virtualshelves::ShareHasExpired' => {
        isa => 'Koha::Exception',
        description=> 'Cannot share this shelf, the share has expired',
    },
    'Koha::Exceptions::Virtualshelves::UseDbAdminAccount' => {
        isa => 'Koha::Exception',
        description => "Invalid use of database administrator account",
    }
);

1;
