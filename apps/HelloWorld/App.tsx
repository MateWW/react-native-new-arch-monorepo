import React from 'react';
import type {PropsWithChildren} from 'react';
import {SafeAreaView, ScrollView, StyleSheet, Text, View} from 'react-native';

function App(): JSX.Element {
  const isDarkMode = true;

  return (
    <SafeAreaView style={{flex: 1}}>
      <ScrollView contentInsetAdjustmentBehavior="automatic" style={{flex: 1}}>
        <View
          style={{
            backgroundColor: 'white',
          }}>
          <Text style={styles.highlight}>App.tsx</Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
  },
  highlight: {
    fontWeight: '700',
  },
});

export default App;
