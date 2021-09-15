
import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View, Image, Dimensions } from 'react-native';
import { FlatList, ScrollView, TouchableOpacity } from 'react-native-gesture-handler';
import { styles } from "./src/style"
import Icon from "react-native-vector-icons/MaterialCommunityIcons";



const products = [
  {
    id: 1,
    name: "Artsy",
    img: require("./assets/product1.png"),

  },
  {
    id: 1,
    name: "Artsy",
    img: require("./assets/product2.png"),

  },
  {
    id: 1,
    name: "Artsy",
    img: require("./assets/product3.png"),

  },
  {
    id: 1,
    name: "Artsy",
    img: require("./assets/product4.png"),

  }
]
export default function App() {
  const Card = ({ product }) => (
    <View style={styles.product}>
      <View style={styles.productHeader}>
      <Image source={require("./assets/like_icon.png")} />
      </View>
      <View style={styles.productHeaderPicture}>
        <Image source={product.img}></Image>
      </View>
      <View style={{justifyContent: "center", alignItems: "center"}}>
        <Text >
          {product.name}
        </Text>
      </View>
      <View style={{justifyContent: "center", alignItems: "center", marginTop: 10}}>
        <Text>
          SHOP NOW
        </Text>
        <View style={{backgroundColor:"black", height:3}}>
          <Text style={{opacity: 0}}>
            ----------------------
          </Text>
        </View>
      </View>
    </View>
  );



  return (
    <ScrollView>


      <View style={styles.appBar}>
        <View style={styles.logo}>
          <Image source={require("./assets/drawer_icon.png")} style={{ marginTop: 3 }} />
          <Image source={require("./assets/logo.png")} style={{ marginLeft: 15 }} />
        </View>
        <Image source={require("./assets/profile_picture.png")} />
      </View>


      <View style={styles.header}>
        <Image source={require("./assets/header_picture.png")} style={{ width: "100%" }} />
        <View style={styles.headerPictureTextRow}>
          <Text style={styles.headerPictureText}>
            This{"\n"}season's{"\n"}latest
          </Text>
        </View>
        <View style={styles.headerPictureButtonRow}>
          <TouchableOpacity style={styles.headerPictureButton}>
            <Icon name={"arrow-left"} color={"white"} size={50}></Icon>
          </TouchableOpacity>
          <TouchableOpacity style={styles.headerPictureButton}>
            <Icon name={"arrow-right"} color={"white"} size={50}></Icon>
          </TouchableOpacity>
        </View>
      </View>

      <FlatList
      style={{margin: 10, width:"100%"}}
        numColumns={2}
        data={products}
        renderItem={({ item }) => <Card product={item} />}

      />

    </ScrollView>
  );
}

