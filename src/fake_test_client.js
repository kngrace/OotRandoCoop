// This is Lynn the fake test client.
// She mimics a normal OotRandoCoop client for testing purposes during development.

const IO_Client = require('socket.io-client');
const crypto = require('crypto');
const zlib = require('zlib');

let master_server_ip = "127.0.0.1";
let master_server_port = "8081";
let GAME_ROOM = "strong-catfish-32";
let nickname = "Lynn";
let my_uuid = "";

function sendDataToMaster(data) {
    websocket.emit('msg', GAME_ROOM, encodeDataForClient({
        uuid: my_uuid,
        nickname: nickname,
        payload: data
    }));
}

function decodeDataFromClient(pack) {
    return JSON.parse(zlib.inflateSync(new Buffer(pack, 'base64')).toString());
}

function encodeDataForClient(data) {
    return zlib.deflateSync(JSON.stringify(data)).toString('base64');
}


const websocket = new IO_Client("http://" + master_server_ip + ":" + master_server_port);

websocket.on('connect', function () {
    websocket.emit('room', encodeDataForClient({
        nickname: nickname,
        room: GAME_ROOM,
        password: crypto.createHash('md5').update("").digest("hex")
    }));
});

websocket.on('room_verified', function (data) {
    let parse = decodeDataFromClient(data);
    if (parse.verified) {
        console.log("Client: Successfully joined room: " + GAME_ROOM + ".");
        websocket.emit('room_check', GAME_ROOM, encodeDataForClient({
            uuid: my_uuid,
            nickname: nickname
        }));
    } else {
        console.log("Request for room " + GAME_ROOM + " was denied due to an invalid password.");
    }
});

websocket.on('id', function (data) {
    let parse = decodeDataFromClient(data);
    my_uuid = parse.id;
    console.log("Client: My UUID: " + my_uuid);
});

websocket.on('client_joined', function (data) {
    let parse = decodeDataFromClient(data);
    console.log(parse.nickname + " has joined the game!");
});

websocket.on('room_check', function (data) {
    let parse = decodeDataFromClient(data);
    websocket.emit('room_check_resp', GAME_ROOM, encodeDataForClient({
        uuid: my_uuid,
        nickname: nickname,
        toClient: parse.uuid
    }));
});

websocket.on('room_check_resp', function (data) {
    let parse = decodeDataFromClient(data);
    console.log("Connected player: " + parse.nickname + ".");
});

websocket.on('initial_sync', function (data) {
    console.log(decodeDataFromClient(data));
});

websocket.on('msg', function (data) {
    let parse = decodeDataFromClient(data);
    console.log(JSON.stringify(parse, null, 2));
});