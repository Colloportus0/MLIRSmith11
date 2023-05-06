module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_12(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_11(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_10(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<4 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.addressof @constant_11 : !llvm.ptr<array<1 x i64>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %75 = llvm.mlir.addressof @constant_12 : !llvm.ptr<array<4 x i64>>
    %76 = llvm.bitcast %75 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %77 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(4 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.null : !llvm.ptr<i32>
    %92 = llvm.getelementptr %91[%86] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.ptrtoint %92 : !llvm.ptr<i32> to i64
    %94 = llvm.mlir.constant(16 : index) : i64
    %95 = llvm.add %93, %94  : i64
    %96 = llvm.call @malloc(%95) : (i64) -> !llvm.ptr<i8>
    %97 = llvm.bitcast %96 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<i32> to i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.sub %94, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.urem %101, %94  : i64
    %103 = llvm.sub %101, %102  : i64
    %104 = llvm.inttoptr %103 : i64 to !llvm.ptr<i32>
    %105 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %106 = llvm.insertvalue %97, %105[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %86, %109[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %87, %110[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %88, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %89, %112[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %88, %114[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %90, %116[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%118 : i64)
  ^bb1(%121: i64):  // 2 preds: ^bb0, ^bb11
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%123 : i64)
  ^bb3(%126: i64):  // 2 preds: ^bb2, ^bb10
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%128 : i64)
  ^bb5(%131: i64):  // 2 preds: ^bb4, ^bb9
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%133 : i64)
  ^bb7(%136: i64):  // 2 preds: ^bb6, ^bb8
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %138 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.add %121, %126  : i64
    %140 = llvm.add %139, %131  : i64
    %141 = llvm.add %140, %136  : i64
    %142 = llvm.getelementptr %138[%141] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.load %142 : !llvm.ptr<i32>
    %144 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.icmp "slt" %143, %145 : i32
    %147 = llvm.select %146, %145, %143 : i1, i32
    %148 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %149 = llvm.load %148 : !llvm.ptr<i32>
    %150 = llvm.icmp "slt" %147, %149 : i32
    %151 = llvm.select %150, %147, %149 : i1, i32
    %152 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.add %121, %126  : i64
    %154 = llvm.add %153, %131  : i64
    %155 = llvm.add %154, %136  : i64
    %156 = llvm.getelementptr %152[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %151, %156 : !llvm.ptr<i32>
    %157 = llvm.add %136, %135  : i64
    llvm.br ^bb7(%157 : i64)
  ^bb9:  // pred: ^bb7
    %158 = llvm.add %131, %130  : i64
    llvm.br ^bb5(%158 : i64)
  ^bb10:  // pred: ^bb5
    %159 = llvm.add %126, %125  : i64
    llvm.br ^bb3(%159 : i64)
  ^bb11:  // pred: ^bb3
    %160 = llvm.add %121, %120  : i64
    llvm.br ^bb1(%160 : i64)
  ^bb12:  // pred: ^bb1
    %161 = llvm.mlir.constant(4 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.null : !llvm.ptr<i64>
    %164 = llvm.getelementptr %163[%161] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %165 = llvm.ptrtoint %164 : !llvm.ptr<i64> to i64
    %166 = llvm.mlir.constant(16 : index) : i64
    %167 = llvm.add %165, %166  : i64
    %168 = llvm.call @malloc(%167) : (i64) -> !llvm.ptr<i8>
    %169 = llvm.bitcast %168 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %170 = llvm.ptrtoint %169 : !llvm.ptr<i64> to i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.sub %166, %171  : i64
    %173 = llvm.add %170, %172  : i64
    %174 = llvm.urem %173, %166  : i64
    %175 = llvm.sub %173, %174  : i64
    %176 = llvm.inttoptr %175 : i64 to !llvm.ptr<i64>
    %177 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %178 = llvm.insertvalue %169, %177[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.insertvalue %176, %178[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.insertvalue %180, %179[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %161, %181[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %162, %182[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%184 : i64)
  ^bb13(%187: i64):  // 2 preds: ^bb12, ^bb14
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %189 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %190 : !llvm.ptr<i64>
    %191 = llvm.add %187, %186  : i64
    llvm.br ^bb13(%191 : i64)
  ^bb15:  // pred: ^bb13
    %192 = llvm.mlir.constant(4 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.null : !llvm.ptr<i64>
    %195 = llvm.getelementptr %194[%192] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.ptrtoint %195 : !llvm.ptr<i64> to i64
    %197 = llvm.mlir.constant(16 : index) : i64
    %198 = llvm.add %196, %197  : i64
    %199 = llvm.call @malloc(%198) : (i64) -> !llvm.ptr<i8>
    %200 = llvm.bitcast %199 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i64> to i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.sub %197, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.urem %204, %197  : i64
    %206 = llvm.sub %204, %205  : i64
    %207 = llvm.inttoptr %206 : i64 to !llvm.ptr<i64>
    %208 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %209 = llvm.insertvalue %200, %208[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.insertvalue %207, %209[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.insertvalue %211, %210[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.insertvalue %192, %212[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %193, %213[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(4 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%215 : i64)
  ^bb16(%218: i64):  // 2 preds: ^bb15, ^bb17
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %220 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.getelementptr %220[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %222 = llvm.load %221 : !llvm.ptr<i64>
    %223 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %224 = llvm.load %223 : !llvm.ptr<i64>
    %225 = llvm.mul %222, %224  : i64
    %226 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.getelementptr %226[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %225, %227 : !llvm.ptr<i64>
    %228 = llvm.add %218, %217  : i64
    llvm.br ^bb16(%228 : i64)
  ^bb18:  // pred: ^bb16
    %229 = llvm.mlir.constant(4 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.null : !llvm.ptr<i1>
    %232 = llvm.getelementptr %231[%229] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %233 = llvm.ptrtoint %232 : !llvm.ptr<i1> to i64
    %234 = llvm.mlir.constant(16 : index) : i64
    %235 = llvm.add %233, %234  : i64
    %236 = llvm.call @malloc(%235) : (i64) -> !llvm.ptr<i8>
    %237 = llvm.bitcast %236 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i1> to i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.sub %234, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.urem %241, %234  : i64
    %243 = llvm.sub %241, %242  : i64
    %244 = llvm.inttoptr %243 : i64 to !llvm.ptr<i1>
    %245 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %246 = llvm.insertvalue %237, %245[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.insertvalue %244, %246[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.insertvalue %248, %247[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.insertvalue %229, %249[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %230, %250[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%252 : i64)
  ^bb19(%255: i64):  // 2 preds: ^bb18, ^bb20
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %257 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.getelementptr %257[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %259 = llvm.load %258 : !llvm.ptr<i64>
    %260 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %262 = llvm.load %261 : !llvm.ptr<i64>
    %263 = llvm.icmp "eq" %259, %262 : i64
    %264 = llvm.extractvalue %251[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.getelementptr %264[%255] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %263, %265 : !llvm.ptr<i1>
    %266 = llvm.add %255, %254  : i64
    llvm.br ^bb19(%266 : i64)
  ^bb21:  // pred: ^bb19
    %267 = llvm.mlir.constant(4 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.null : !llvm.ptr<i64>
    %270 = llvm.getelementptr %269[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %271 = llvm.ptrtoint %270 : !llvm.ptr<i64> to i64
    %272 = llvm.mlir.constant(16 : index) : i64
    %273 = llvm.add %271, %272  : i64
    %274 = llvm.call @malloc(%273) : (i64) -> !llvm.ptr<i8>
    %275 = llvm.bitcast %274 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %276 = llvm.ptrtoint %275 : !llvm.ptr<i64> to i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.sub %272, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.urem %279, %272  : i64
    %281 = llvm.sub %279, %280  : i64
    %282 = llvm.inttoptr %281 : i64 to !llvm.ptr<i64>
    %283 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %284 = llvm.insertvalue %275, %283[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %282, %284[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.insertvalue %286, %285[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.insertvalue %267, %287[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %268, %288[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%290 : i64)
  ^bb22(%293: i64):  // 2 preds: ^bb21, ^bb23
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %295 = llvm.extractvalue %251[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%293] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %297 = llvm.load %296 : !llvm.ptr<i1>
    %298 = llvm.extractvalue %183[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.getelementptr %298[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %300 = llvm.load %299 : !llvm.ptr<i64>
    %301 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.getelementptr %301[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %303 = llvm.load %302 : !llvm.ptr<i64>
    %304 = llvm.select %297, %300, %303 : i1, i64
    %305 = llvm.extractvalue %289[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.getelementptr %305[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %304, %306 : !llvm.ptr<i64>
    %307 = llvm.add %293, %292  : i64
    llvm.br ^bb22(%307 : i64)
  ^bb24:  // pred: ^bb22
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.null : !llvm.ptr<i32>
    %314 = llvm.getelementptr %313[%308] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %315 = llvm.ptrtoint %314 : !llvm.ptr<i32> to i64
    %316 = llvm.mlir.constant(16 : index) : i64
    %317 = llvm.add %315, %316  : i64
    %318 = llvm.call @malloc(%317) : (i64) -> !llvm.ptr<i8>
    %319 = llvm.bitcast %318 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %320 = llvm.ptrtoint %319 : !llvm.ptr<i32> to i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.sub %316, %321  : i64
    %323 = llvm.add %320, %322  : i64
    %324 = llvm.urem %323, %316  : i64
    %325 = llvm.sub %323, %324  : i64
    %326 = llvm.inttoptr %325 : i64 to !llvm.ptr<i32>
    %327 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %328 = llvm.insertvalue %319, %327[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %326, %328[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.insertvalue %330, %329[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %308, %331[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %309, %332[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %310, %333[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %311, %334[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %309, %335[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %310, %336[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %311, %337[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %312, %338[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%340 : i64)
  ^bb25(%343: i64):  // 2 preds: ^bb24, ^bb35
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%345 : i64)
  ^bb27(%348: i64):  // 2 preds: ^bb26, ^bb34
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%350 : i64)
  ^bb29(%353: i64):  // 2 preds: ^bb28, ^bb33
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%355 : i64)
  ^bb31(%358: i64):  // 2 preds: ^bb30, ^bb32
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %360 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.add %13, %13  : i64
    %362 = llvm.add %361, %13  : i64
    %363 = llvm.add %362, %13  : i64
    %364 = llvm.getelementptr %360[%363] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %365 = llvm.load %364 : !llvm.ptr<i32>
    %366 = llvm.extractvalue %339[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.add %343, %348  : i64
    %368 = llvm.add %367, %353  : i64
    %369 = llvm.add %368, %358  : i64
    %370 = llvm.getelementptr %366[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %365, %370 : !llvm.ptr<i32>
    %371 = llvm.add %358, %357  : i64
    llvm.br ^bb31(%371 : i64)
  ^bb33:  // pred: ^bb31
    %372 = llvm.add %353, %352  : i64
    llvm.br ^bb29(%372 : i64)
  ^bb34:  // pred: ^bb29
    %373 = llvm.add %348, %347  : i64
    llvm.br ^bb27(%373 : i64)
  ^bb35:  // pred: ^bb27
    %374 = llvm.add %343, %342  : i64
    llvm.br ^bb25(%374 : i64)
  ^bb36:  // pred: ^bb25
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.null : !llvm.ptr<i32>
    %381 = llvm.getelementptr %380[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %382 = llvm.ptrtoint %381 : !llvm.ptr<i32> to i64
    %383 = llvm.mlir.constant(16 : index) : i64
    %384 = llvm.add %382, %383  : i64
    %385 = llvm.call @malloc(%384) : (i64) -> !llvm.ptr<i8>
    %386 = llvm.bitcast %385 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i32> to i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.sub %383, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.urem %390, %383  : i64
    %392 = llvm.sub %390, %391  : i64
    %393 = llvm.inttoptr %392 : i64 to !llvm.ptr<i32>
    %394 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %395 = llvm.insertvalue %386, %394[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %393, %395[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.insertvalue %397, %396[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %375, %398[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %376, %399[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %377, %400[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %378, %401[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %377, %403[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %378, %404[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %379, %405[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%407 : i64)
  ^bb37(%410: i64):  // 2 preds: ^bb36, ^bb47
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%412 : i64)
  ^bb39(%415: i64):  // 2 preds: ^bb38, ^bb46
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%417 : i64)
  ^bb41(%420: i64):  // 2 preds: ^bb40, ^bb45
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%422 : i64)
  ^bb43(%425: i64):  // 2 preds: ^bb42, ^bb44
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %427 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.add %410, %415  : i64
    %429 = llvm.add %428, %420  : i64
    %430 = llvm.add %429, %425  : i64
    %431 = llvm.getelementptr %427[%430] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %432 = llvm.load %431 : !llvm.ptr<i32>
    %433 = llvm.extractvalue %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.add %410, %415  : i64
    %435 = llvm.add %434, %420  : i64
    %436 = llvm.add %435, %425  : i64
    %437 = llvm.getelementptr %433[%436] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %432, %437 : !llvm.ptr<i32>
    %438 = llvm.add %425, %424  : i64
    llvm.br ^bb43(%438 : i64)
  ^bb45:  // pred: ^bb43
    %439 = llvm.add %420, %419  : i64
    llvm.br ^bb41(%439 : i64)
  ^bb46:  // pred: ^bb41
    %440 = llvm.add %415, %414  : i64
    llvm.br ^bb39(%440 : i64)
  ^bb47:  // pred: ^bb39
    %441 = llvm.add %410, %409  : i64
    llvm.br ^bb37(%441 : i64)
  ^bb48:  // pred: ^bb37
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.mlir.null : !llvm.ptr<i64>
    %445 = llvm.getelementptr %444[%442] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %446 = llvm.ptrtoint %445 : !llvm.ptr<i64> to i64
    %447 = llvm.mlir.constant(16 : index) : i64
    %448 = llvm.add %446, %447  : i64
    %449 = llvm.call @malloc(%448) : (i64) -> !llvm.ptr<i8>
    %450 = llvm.bitcast %449 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %451 = llvm.ptrtoint %450 : !llvm.ptr<i64> to i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.sub %447, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.urem %454, %447  : i64
    %456 = llvm.sub %454, %455  : i64
    %457 = llvm.inttoptr %456 : i64 to !llvm.ptr<i64>
    %458 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %459 = llvm.insertvalue %450, %458[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.insertvalue %457, %459[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.insertvalue %461, %460[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.insertvalue %442, %462[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %443, %463[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(4 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%465 : i64)
  ^bb49(%468: i64):  // 2 preds: ^bb48, ^bb50
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %470 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.getelementptr %470[%468] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %471 : !llvm.ptr<i64>
    %472 = llvm.add %468, %467  : i64
    llvm.br ^bb49(%472 : i64)
  ^bb51:  // pred: ^bb49
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.null : !llvm.ptr<i64>
    %476 = llvm.getelementptr %475[%473] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %477 = llvm.ptrtoint %476 : !llvm.ptr<i64> to i64
    %478 = llvm.mlir.constant(16 : index) : i64
    %479 = llvm.add %477, %478  : i64
    %480 = llvm.call @malloc(%479) : (i64) -> !llvm.ptr<i8>
    %481 = llvm.bitcast %480 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %482 = llvm.ptrtoint %481 : !llvm.ptr<i64> to i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.sub %478, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.urem %485, %478  : i64
    %487 = llvm.sub %485, %486  : i64
    %488 = llvm.inttoptr %487 : i64 to !llvm.ptr<i64>
    %489 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %490 = llvm.insertvalue %481, %489[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %491 = llvm.insertvalue %488, %490[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.insertvalue %492, %491[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.insertvalue %473, %493[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.insertvalue %474, %494[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%496 : i64)
  ^bb52(%499: i64):  // 2 preds: ^bb51, ^bb53
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %501 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.getelementptr %501[%499] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %503 = llvm.load %502 : !llvm.ptr<i64>
    %504 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %505 = llvm.load %504 : !llvm.ptr<i64>
    %506 = llvm.mul %503, %505  : i64
    %507 = llvm.extractvalue %495[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %508 = llvm.getelementptr %507[%499] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %506, %508 : !llvm.ptr<i64>
    %509 = llvm.add %499, %498  : i64
    llvm.br ^bb52(%509 : i64)
  ^bb54:  // pred: ^bb52
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.mlir.null : !llvm.ptr<i1>
    %513 = llvm.getelementptr %512[%510] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %514 = llvm.ptrtoint %513 : !llvm.ptr<i1> to i64
    %515 = llvm.mlir.constant(16 : index) : i64
    %516 = llvm.add %514, %515  : i64
    %517 = llvm.call @malloc(%516) : (i64) -> !llvm.ptr<i8>
    %518 = llvm.bitcast %517 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %519 = llvm.ptrtoint %518 : !llvm.ptr<i1> to i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.sub %515, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.urem %522, %515  : i64
    %524 = llvm.sub %522, %523  : i64
    %525 = llvm.inttoptr %524 : i64 to !llvm.ptr<i1>
    %526 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %527 = llvm.insertvalue %518, %526[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.insertvalue %525, %527[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.insertvalue %529, %528[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.insertvalue %510, %530[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %532 = llvm.insertvalue %511, %531[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(4 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%533 : i64)
  ^bb55(%536: i64):  // 2 preds: ^bb54, ^bb56
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %538 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %539 = llvm.getelementptr %538[%536] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %540 = llvm.load %539 : !llvm.ptr<i64>
    %541 = llvm.extractvalue %495[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %542 = llvm.getelementptr %541[%536] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %543 = llvm.load %542 : !llvm.ptr<i64>
    %544 = llvm.icmp "eq" %540, %543 : i64
    %545 = llvm.extractvalue %532[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %546 = llvm.getelementptr %545[%536] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %544, %546 : !llvm.ptr<i1>
    %547 = llvm.add %536, %535  : i64
    llvm.br ^bb55(%547 : i64)
  ^bb57:  // pred: ^bb55
    %548 = llvm.mlir.constant(4 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.mlir.null : !llvm.ptr<i64>
    %551 = llvm.getelementptr %550[%548] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %552 = llvm.ptrtoint %551 : !llvm.ptr<i64> to i64
    %553 = llvm.mlir.constant(16 : index) : i64
    %554 = llvm.add %552, %553  : i64
    %555 = llvm.call @malloc(%554) : (i64) -> !llvm.ptr<i8>
    %556 = llvm.bitcast %555 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %557 = llvm.ptrtoint %556 : !llvm.ptr<i64> to i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.sub %553, %558  : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.urem %560, %553  : i64
    %562 = llvm.sub %560, %561  : i64
    %563 = llvm.inttoptr %562 : i64 to !llvm.ptr<i64>
    %564 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %565 = llvm.insertvalue %556, %564[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %566 = llvm.insertvalue %563, %565[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.mlir.constant(0 : index) : i64
    %568 = llvm.insertvalue %567, %566[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %569 = llvm.insertvalue %548, %568[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.insertvalue %549, %569[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(4 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%571 : i64)
  ^bb58(%574: i64):  // 2 preds: ^bb57, ^bb59
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %576 = llvm.extractvalue %532[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.getelementptr %576[%574] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %578 = llvm.load %577 : !llvm.ptr<i1>
    %579 = llvm.extractvalue %464[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %580 = llvm.getelementptr %579[%574] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %581 = llvm.load %580 : !llvm.ptr<i64>
    %582 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %583 = llvm.getelementptr %582[%574] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %584 = llvm.load %583 : !llvm.ptr<i64>
    %585 = llvm.select %578, %581, %584 : i1, i64
    %586 = llvm.extractvalue %570[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %587 = llvm.getelementptr %586[%574] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %585, %587 : !llvm.ptr<i64>
    %588 = llvm.add %574, %573  : i64
    llvm.br ^bb58(%588 : i64)
  ^bb60:  // pred: ^bb58
    %589 = llvm.mlir.constant(1 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.null : !llvm.ptr<i32>
    %595 = llvm.getelementptr %594[%589] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %596 = llvm.ptrtoint %595 : !llvm.ptr<i32> to i64
    %597 = llvm.mlir.constant(16 : index) : i64
    %598 = llvm.add %596, %597  : i64
    %599 = llvm.call @malloc(%598) : (i64) -> !llvm.ptr<i8>
    %600 = llvm.bitcast %599 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %601 = llvm.ptrtoint %600 : !llvm.ptr<i32> to i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.sub %597, %602  : i64
    %604 = llvm.add %601, %603  : i64
    %605 = llvm.urem %604, %597  : i64
    %606 = llvm.sub %604, %605  : i64
    %607 = llvm.inttoptr %606 : i64 to !llvm.ptr<i32>
    %608 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %609 = llvm.insertvalue %600, %608[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %607, %609[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.insertvalue %611, %610[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %589, %612[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %590, %613[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.insertvalue %591, %614[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.insertvalue %592, %615[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.insertvalue %590, %616[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.insertvalue %591, %617[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.insertvalue %592, %618[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.insertvalue %593, %619[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.mlir.constant(0 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%621 : i64)
  ^bb61(%624: i64):  // 2 preds: ^bb60, ^bb71
    %625 = llvm.icmp "slt" %624, %622 : i64
    llvm.cond_br %625, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%626 : i64)
  ^bb63(%629: i64):  // 2 preds: ^bb62, ^bb70
    %630 = llvm.icmp "slt" %629, %627 : i64
    llvm.cond_br %630, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %631 = llvm.mlir.constant(0 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    %633 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%631 : i64)
  ^bb65(%634: i64):  // 2 preds: ^bb64, ^bb69
    %635 = llvm.icmp "slt" %634, %632 : i64
    llvm.cond_br %635, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%636 : i64)
  ^bb67(%639: i64):  // 2 preds: ^bb66, ^bb68
    %640 = llvm.icmp "slt" %639, %637 : i64
    llvm.cond_br %640, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %641 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %642 = llvm.add %13, %13  : i64
    %643 = llvm.add %642, %13  : i64
    %644 = llvm.add %643, %13  : i64
    %645 = llvm.getelementptr %641[%644] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %646 = llvm.load %645 : !llvm.ptr<i32>
    %647 = llvm.extractvalue %620[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.add %624, %629  : i64
    %649 = llvm.add %648, %634  : i64
    %650 = llvm.add %649, %639  : i64
    %651 = llvm.getelementptr %647[%650] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %646, %651 : !llvm.ptr<i32>
    %652 = llvm.add %639, %638  : i64
    llvm.br ^bb67(%652 : i64)
  ^bb69:  // pred: ^bb67
    %653 = llvm.add %634, %633  : i64
    llvm.br ^bb65(%653 : i64)
  ^bb70:  // pred: ^bb65
    %654 = llvm.add %629, %628  : i64
    llvm.br ^bb63(%654 : i64)
  ^bb71:  // pred: ^bb63
    %655 = llvm.add %624, %623  : i64
    llvm.br ^bb61(%655 : i64)
  ^bb72:  // pred: ^bb61
    %656 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %657 = llvm.insertvalue %339, %656[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %658 = llvm.insertvalue %406, %657[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %659 = llvm.insertvalue %620, %658[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %659 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v3_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

