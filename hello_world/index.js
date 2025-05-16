
const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();

exports['hello_world'] = functions.https.onCall(async (data, context) => {
const userId = context.auth?.uid;

if (!userId) {
throw new functions.https.HttpsError('unauthenticated', 'User must be authenticated to fetch diary entries.');
}

const diaryEntriesSnapshot = await admin.firestore()
.collection('user').doc(userId).collection('diaryEntries')
.orderBy('dateTime', 'desc')
.limit(5)
.get();

const diaryEntries = [];
diaryEntriesSnapshot.forEach(doc => {
  diaryEntries.push(doc.data());
});

return { entries: diaryEntries };
});