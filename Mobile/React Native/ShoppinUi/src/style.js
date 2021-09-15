import { Dimensions, StyleSheet } from 'react-native';

export const styles = StyleSheet.create({
    appBar: {
        flexDirection: "row",
        justifyContent: "space-between",
        marginTop: 20,
        marginLeft: 10,
        marginRight: 10,
    },
    logo: {
        flexDirection: "row"
    },
    header: {
        marginTop: 30,
        justifyContent: "center",
        alignItems: "center",
        marginLeft: 10,
        marginRight: 10,
        position: "relative"
    },
    headerPictureButtonRow: {
        flexDirection: "row",
        position: "absolute",
        paddingLeft: "65%",
        paddingTop: "50%"
    },
    headerPictureButton: {
        justifyContent: "center",
        alignItems: "center",
        backgroundColor: "black",
        width: 50,
        height: 50,
        marginLeft: 1
    },
    headerPictureTextRow: {
        flexDirection: "row",
        position: "absolute",
        marginBottom: "20%"
    },
    headerPictureText: {
        fontSize: 20,
        backgroundColor: "white",
        position: "absolute",
        marginLeft: 57,
    },
    products: {
        marginTop: 30,
        justifyContent: "center",
        alignItems: "center",
        width: "100%",


    },
    productsRow: {
        flexDirection: "row",
        justifyContent: "center",
        alignItems: "center",
        marginLeft: 15,
        marginRight: 15,

    },
    product: {
        height: 225,
        marginHorizontal: 5,
        marginBottom: 20,
        marginTop: 10,
        backgroundColor: "rgba(241, 241, 241, 1)",
        width: Dimensions.get("screen").width / 2 - 17
    },
    productHeader: {
        flexDirection: "row",
        marginRight: 10,
        marginTop: 5,
        justifyContent: "flex-end"
    },
    productHeaderPicture: {
        alignItems: "center",
        justifyContent: "center"
    },
    shopText: {

        fontSize: 20
    }

})