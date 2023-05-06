module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_7(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0"]} {
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
    %57 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
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
    %68 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x i64>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %75 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<4 x i64>>
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
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.null : !llvm.ptr<i32>
    %167 = llvm.getelementptr %166[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i32> to i64
    %169 = llvm.mlir.constant(16 : index) : i64
    %170 = llvm.add %168, %169  : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i32> to i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.sub %169, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.urem %176, %169  : i64
    %178 = llvm.sub %176, %177  : i64
    %179 = llvm.inttoptr %178 : i64 to !llvm.ptr<i32>
    %180 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %181 = llvm.insertvalue %172, %180[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %161, %184[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %162, %185[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %163, %186[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %164, %187[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %162, %188[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %163, %189[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %164, %190[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %165, %191[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%193 : i64)
  ^bb13(%196: i64):  // 2 preds: ^bb12, ^bb23
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%198 : i64)
  ^bb15(%201: i64):  // 2 preds: ^bb14, ^bb22
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%203 : i64)
  ^bb17(%206: i64):  // 2 preds: ^bb16, ^bb21
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%208 : i64)
  ^bb19(%211: i64):  // 2 preds: ^bb18, ^bb20
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %213 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.add %196, %201  : i64
    %215 = llvm.add %214, %206  : i64
    %216 = llvm.add %215, %211  : i64
    %217 = llvm.getelementptr %213[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.load %217 : !llvm.ptr<i32>
    %219 = llvm.mlir.constant(false) : i1
    %220 = "llvm.intr.abs"(%218, %219) : (i32, i1) -> i32
    %221 = llvm.extractvalue %192[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.add %196, %201  : i64
    %223 = llvm.add %222, %206  : i64
    %224 = llvm.add %223, %211  : i64
    %225 = llvm.getelementptr %221[%224] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %220, %225 : !llvm.ptr<i32>
    %226 = llvm.add %211, %210  : i64
    llvm.br ^bb19(%226 : i64)
  ^bb21:  // pred: ^bb19
    %227 = llvm.add %206, %205  : i64
    llvm.br ^bb17(%227 : i64)
  ^bb22:  // pred: ^bb17
    %228 = llvm.add %201, %200  : i64
    llvm.br ^bb15(%228 : i64)
  ^bb23:  // pred: ^bb15
    %229 = llvm.add %196, %195  : i64
    llvm.br ^bb13(%229 : i64)
  ^bb24:  // pred: ^bb13
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.null : !llvm.ptr<i64>
    %233 = llvm.getelementptr %232[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i64> to i64
    %235 = llvm.mlir.constant(16 : index) : i64
    %236 = llvm.add %234, %235  : i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr<i8>
    %238 = llvm.bitcast %237 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i64> to i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.sub %235, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.urem %242, %235  : i64
    %244 = llvm.sub %242, %243  : i64
    %245 = llvm.inttoptr %244 : i64 to !llvm.ptr<i64>
    %246 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %247 = llvm.insertvalue %238, %246[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %230, %250[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %231, %251[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%253 : i64)
  ^bb25(%256: i64):  // 2 preds: ^bb24, ^bb26
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %258 = llvm.extractvalue %252[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.getelementptr %258[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %259 : !llvm.ptr<i64>
    %260 = llvm.add %256, %255  : i64
    llvm.br ^bb25(%260 : i64)
  ^bb27:  // pred: ^bb25
    %261 = llvm.mlir.constant(4 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.null : !llvm.ptr<i64>
    %264 = llvm.getelementptr %263[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %265 = llvm.ptrtoint %264 : !llvm.ptr<i64> to i64
    %266 = llvm.mlir.constant(16 : index) : i64
    %267 = llvm.add %265, %266  : i64
    %268 = llvm.call @malloc(%267) : (i64) -> !llvm.ptr<i8>
    %269 = llvm.bitcast %268 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %270 = llvm.ptrtoint %269 : !llvm.ptr<i64> to i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.sub %266, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.urem %273, %266  : i64
    %275 = llvm.sub %273, %274  : i64
    %276 = llvm.inttoptr %275 : i64 to !llvm.ptr<i64>
    %277 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %278 = llvm.insertvalue %269, %277[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.insertvalue %276, %278[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.insertvalue %280, %279[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %261, %281[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %262, %282[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%284 : i64)
  ^bb28(%287: i64):  // 2 preds: ^bb27, ^bb29
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %289 = llvm.extractvalue %252[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.getelementptr %289[%287] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %291 = llvm.load %290 : !llvm.ptr<i64>
    %292 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %293 = llvm.load %292 : !llvm.ptr<i64>
    %294 = llvm.mul %291, %293  : i64
    %295 = llvm.extractvalue %283[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%287] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %294, %296 : !llvm.ptr<i64>
    %297 = llvm.add %287, %286  : i64
    llvm.br ^bb28(%297 : i64)
  ^bb30:  // pred: ^bb28
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.null : !llvm.ptr<i1>
    %301 = llvm.getelementptr %300[%298] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %302 = llvm.ptrtoint %301 : !llvm.ptr<i1> to i64
    %303 = llvm.mlir.constant(16 : index) : i64
    %304 = llvm.add %302, %303  : i64
    %305 = llvm.call @malloc(%304) : (i64) -> !llvm.ptr<i8>
    %306 = llvm.bitcast %305 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i1> to i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.sub %303, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.urem %310, %303  : i64
    %312 = llvm.sub %310, %311  : i64
    %313 = llvm.inttoptr %312 : i64 to !llvm.ptr<i1>
    %314 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %315 = llvm.insertvalue %306, %314[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.insertvalue %313, %315[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.insertvalue %317, %316[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %298, %318[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.insertvalue %299, %319[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%321 : i64)
  ^bb31(%324: i64):  // 2 preds: ^bb30, ^bb32
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %326 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.getelementptr %326[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %328 = llvm.load %327 : !llvm.ptr<i64>
    %329 = llvm.extractvalue %283[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.getelementptr %329[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.load %330 : !llvm.ptr<i64>
    %332 = llvm.icmp "eq" %328, %331 : i64
    %333 = llvm.extractvalue %320[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.getelementptr %333[%324] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %332, %334 : !llvm.ptr<i1>
    %335 = llvm.add %324, %323  : i64
    llvm.br ^bb31(%335 : i64)
  ^bb33:  // pred: ^bb31
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.null : !llvm.ptr<i64>
    %339 = llvm.getelementptr %338[%336] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i64> to i64
    %341 = llvm.mlir.constant(16 : index) : i64
    %342 = llvm.add %340, %341  : i64
    %343 = llvm.call @malloc(%342) : (i64) -> !llvm.ptr<i8>
    %344 = llvm.bitcast %343 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i64> to i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.sub %341, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.urem %348, %341  : i64
    %350 = llvm.sub %348, %349  : i64
    %351 = llvm.inttoptr %350 : i64 to !llvm.ptr<i64>
    %352 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %353 = llvm.insertvalue %344, %352[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.insertvalue %351, %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.insertvalue %355, %354[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %336, %356[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.insertvalue %337, %357[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%359 : i64)
  ^bb34(%362: i64):  // 2 preds: ^bb33, ^bb35
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %364 = llvm.extractvalue %320[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.getelementptr %364[%362] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %366 = llvm.load %365 : !llvm.ptr<i1>
    %367 = llvm.extractvalue %252[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %369 = llvm.load %368 : !llvm.ptr<i64>
    %370 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.select %366, %369, %372 : i1, i64
    %374 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.getelementptr %374[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %373, %375 : !llvm.ptr<i64>
    %376 = llvm.add %362, %361  : i64
    llvm.br ^bb34(%376 : i64)
  ^bb36:  // pred: ^bb34
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.null : !llvm.ptr<i32>
    %383 = llvm.getelementptr %382[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i32> to i64
    %385 = llvm.mlir.constant(16 : index) : i64
    %386 = llvm.add %384, %385  : i64
    %387 = llvm.call @malloc(%386) : (i64) -> !llvm.ptr<i8>
    %388 = llvm.bitcast %387 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %389 = llvm.ptrtoint %388 : !llvm.ptr<i32> to i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.sub %385, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.urem %392, %385  : i64
    %394 = llvm.sub %392, %393  : i64
    %395 = llvm.inttoptr %394 : i64 to !llvm.ptr<i32>
    %396 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %397 = llvm.insertvalue %388, %396[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %395, %397[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.insertvalue %399, %398[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %377, %400[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %378, %401[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %379, %402[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %380, %403[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %378, %404[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %379, %405[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %380, %406[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %381, %407[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%409 : i64)
  ^bb37(%412: i64):  // 2 preds: ^bb36, ^bb47
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%414 : i64)
  ^bb39(%417: i64):  // 2 preds: ^bb38, ^bb46
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%419 : i64)
  ^bb41(%422: i64):  // 2 preds: ^bb40, ^bb45
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%424 : i64)
  ^bb43(%427: i64):  // 2 preds: ^bb42, ^bb44
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %429 = llvm.extractvalue %192[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.add %13, %13  : i64
    %431 = llvm.add %430, %13  : i64
    %432 = llvm.add %431, %13  : i64
    %433 = llvm.getelementptr %429[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %434 = llvm.load %433 : !llvm.ptr<i32>
    %435 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.add %412, %417  : i64
    %437 = llvm.add %436, %422  : i64
    %438 = llvm.add %437, %427  : i64
    %439 = llvm.getelementptr %435[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %434, %439 : !llvm.ptr<i32>
    %440 = llvm.add %427, %426  : i64
    llvm.br ^bb43(%440 : i64)
  ^bb45:  // pred: ^bb43
    %441 = llvm.add %422, %421  : i64
    llvm.br ^bb41(%441 : i64)
  ^bb46:  // pred: ^bb41
    %442 = llvm.add %417, %416  : i64
    llvm.br ^bb39(%442 : i64)
  ^bb47:  // pred: ^bb39
    %443 = llvm.add %412, %411  : i64
    llvm.br ^bb37(%443 : i64)
  ^bb48:  // pred: ^bb37
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.null : !llvm.ptr<i32>
    %450 = llvm.getelementptr %449[%444] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %451 = llvm.ptrtoint %450 : !llvm.ptr<i32> to i64
    %452 = llvm.mlir.constant(16 : index) : i64
    %453 = llvm.add %451, %452  : i64
    %454 = llvm.call @malloc(%453) : (i64) -> !llvm.ptr<i8>
    %455 = llvm.bitcast %454 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i32> to i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.sub %452, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.urem %459, %452  : i64
    %461 = llvm.sub %459, %460  : i64
    %462 = llvm.inttoptr %461 : i64 to !llvm.ptr<i32>
    %463 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %464 = llvm.insertvalue %455, %463[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %462, %464[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.insertvalue %466, %465[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %444, %467[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %445, %468[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %446, %469[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %447, %470[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %445, %471[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %447, %473[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%476 : i64)
  ^bb49(%479: i64):  // 2 preds: ^bb48, ^bb59
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%481 : i64)
  ^bb51(%484: i64):  // 2 preds: ^bb50, ^bb58
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%486 : i64)
  ^bb53(%489: i64):  // 2 preds: ^bb52, ^bb57
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%491 : i64)
  ^bb55(%494: i64):  // 2 preds: ^bb54, ^bb56
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %496 = llvm.extractvalue %192[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.add %479, %484  : i64
    %498 = llvm.add %497, %489  : i64
    %499 = llvm.add %498, %494  : i64
    %500 = llvm.getelementptr %496[%499] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %501 = llvm.load %500 : !llvm.ptr<i32>
    %502 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.add %479, %484  : i64
    %504 = llvm.add %503, %489  : i64
    %505 = llvm.add %504, %494  : i64
    %506 = llvm.getelementptr %502[%505] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %507 = llvm.load %506 : !llvm.ptr<i32>
    %508 = llvm.add %501, %507  : i32
    %509 = llvm.extractvalue %475[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.add %479, %484  : i64
    %511 = llvm.add %510, %489  : i64
    %512 = llvm.add %511, %494  : i64
    %513 = llvm.getelementptr %509[%512] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %508, %513 : !llvm.ptr<i32>
    %514 = llvm.add %494, %493  : i64
    llvm.br ^bb55(%514 : i64)
  ^bb57:  // pred: ^bb55
    %515 = llvm.add %489, %488  : i64
    llvm.br ^bb53(%515 : i64)
  ^bb58:  // pred: ^bb53
    %516 = llvm.add %484, %483  : i64
    llvm.br ^bb51(%516 : i64)
  ^bb59:  // pred: ^bb51
    %517 = llvm.add %479, %478  : i64
    llvm.br ^bb49(%517 : i64)
  ^bb60:  // pred: ^bb49
    %518 = llvm.mlir.constant(4 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.null : !llvm.ptr<i64>
    %521 = llvm.getelementptr %520[%518] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %522 = llvm.ptrtoint %521 : !llvm.ptr<i64> to i64
    %523 = llvm.mlir.constant(16 : index) : i64
    %524 = llvm.add %522, %523  : i64
    %525 = llvm.call @malloc(%524) : (i64) -> !llvm.ptr<i8>
    %526 = llvm.bitcast %525 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %527 = llvm.ptrtoint %526 : !llvm.ptr<i64> to i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.sub %523, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.urem %530, %523  : i64
    %532 = llvm.sub %530, %531  : i64
    %533 = llvm.inttoptr %532 : i64 to !llvm.ptr<i64>
    %534 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %535 = llvm.insertvalue %526, %534[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %536 = llvm.insertvalue %533, %535[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.insertvalue %537, %536[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %539 = llvm.insertvalue %518, %538[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %540 = llvm.insertvalue %519, %539[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %541 = llvm.mlir.constant(0 : index) : i64
    %542 = llvm.mlir.constant(4 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%541 : i64)
  ^bb61(%544: i64):  // 2 preds: ^bb60, ^bb62
    %545 = llvm.icmp "slt" %544, %542 : i64
    llvm.cond_br %545, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %546 = llvm.extractvalue %540[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.getelementptr %546[%544] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %547 : !llvm.ptr<i64>
    %548 = llvm.add %544, %543  : i64
    llvm.br ^bb61(%548 : i64)
  ^bb63:  // pred: ^bb61
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.null : !llvm.ptr<i64>
    %552 = llvm.getelementptr %551[%549] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %553 = llvm.ptrtoint %552 : !llvm.ptr<i64> to i64
    %554 = llvm.mlir.constant(16 : index) : i64
    %555 = llvm.add %553, %554  : i64
    %556 = llvm.call @malloc(%555) : (i64) -> !llvm.ptr<i8>
    %557 = llvm.bitcast %556 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %558 = llvm.ptrtoint %557 : !llvm.ptr<i64> to i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.sub %554, %559  : i64
    %561 = llvm.add %558, %560  : i64
    %562 = llvm.urem %561, %554  : i64
    %563 = llvm.sub %561, %562  : i64
    %564 = llvm.inttoptr %563 : i64 to !llvm.ptr<i64>
    %565 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %566 = llvm.insertvalue %557, %565[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.insertvalue %564, %566[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.insertvalue %568, %567[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.insertvalue %549, %569[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %571 = llvm.insertvalue %550, %570[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(4 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%572 : i64)
  ^bb64(%575: i64):  // 2 preds: ^bb63, ^bb65
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %577 = llvm.extractvalue %540[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.getelementptr %577[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %579 = llvm.load %578 : !llvm.ptr<i64>
    %580 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %581 = llvm.load %580 : !llvm.ptr<i64>
    %582 = llvm.mul %579, %581  : i64
    %583 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %584 = llvm.getelementptr %583[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %582, %584 : !llvm.ptr<i64>
    %585 = llvm.add %575, %574  : i64
    llvm.br ^bb64(%585 : i64)
  ^bb66:  // pred: ^bb64
    %586 = llvm.mlir.constant(4 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    %588 = llvm.mlir.null : !llvm.ptr<i1>
    %589 = llvm.getelementptr %588[%586] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %590 = llvm.ptrtoint %589 : !llvm.ptr<i1> to i64
    %591 = llvm.mlir.constant(16 : index) : i64
    %592 = llvm.add %590, %591  : i64
    %593 = llvm.call @malloc(%592) : (i64) -> !llvm.ptr<i8>
    %594 = llvm.bitcast %593 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %595 = llvm.ptrtoint %594 : !llvm.ptr<i1> to i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.sub %591, %596  : i64
    %598 = llvm.add %595, %597  : i64
    %599 = llvm.urem %598, %591  : i64
    %600 = llvm.sub %598, %599  : i64
    %601 = llvm.inttoptr %600 : i64 to !llvm.ptr<i1>
    %602 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %603 = llvm.insertvalue %594, %602[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.insertvalue %601, %603[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.insertvalue %605, %604[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.insertvalue %586, %606[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.insertvalue %587, %607[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.mlir.constant(4 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%609 : i64)
  ^bb67(%612: i64):  // 2 preds: ^bb66, ^bb68
    %613 = llvm.icmp "slt" %612, %610 : i64
    llvm.cond_br %613, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %614 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %615 = llvm.getelementptr %614[%612] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %616 = llvm.load %615 : !llvm.ptr<i64>
    %617 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %618 = llvm.getelementptr %617[%612] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %619 = llvm.load %618 : !llvm.ptr<i64>
    %620 = llvm.icmp "eq" %616, %619 : i64
    %621 = llvm.extractvalue %608[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %622 = llvm.getelementptr %621[%612] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %620, %622 : !llvm.ptr<i1>
    %623 = llvm.add %612, %611  : i64
    llvm.br ^bb67(%623 : i64)
  ^bb69:  // pred: ^bb67
    %624 = llvm.mlir.constant(4 : index) : i64
    %625 = llvm.mlir.constant(1 : index) : i64
    %626 = llvm.mlir.null : !llvm.ptr<i64>
    %627 = llvm.getelementptr %626[%624] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %628 = llvm.ptrtoint %627 : !llvm.ptr<i64> to i64
    %629 = llvm.mlir.constant(16 : index) : i64
    %630 = llvm.add %628, %629  : i64
    %631 = llvm.call @malloc(%630) : (i64) -> !llvm.ptr<i8>
    %632 = llvm.bitcast %631 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %633 = llvm.ptrtoint %632 : !llvm.ptr<i64> to i64
    %634 = llvm.mlir.constant(1 : index) : i64
    %635 = llvm.sub %629, %634  : i64
    %636 = llvm.add %633, %635  : i64
    %637 = llvm.urem %636, %629  : i64
    %638 = llvm.sub %636, %637  : i64
    %639 = llvm.inttoptr %638 : i64 to !llvm.ptr<i64>
    %640 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %641 = llvm.insertvalue %632, %640[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.insertvalue %639, %641[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %643 = llvm.mlir.constant(0 : index) : i64
    %644 = llvm.insertvalue %643, %642[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.insertvalue %624, %644[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %646 = llvm.insertvalue %625, %645[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %647 = llvm.mlir.constant(0 : index) : i64
    %648 = llvm.mlir.constant(4 : index) : i64
    %649 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%647 : i64)
  ^bb70(%650: i64):  // 2 preds: ^bb69, ^bb71
    %651 = llvm.icmp "slt" %650, %648 : i64
    llvm.cond_br %651, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %652 = llvm.extractvalue %608[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %653 = llvm.getelementptr %652[%650] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %654 = llvm.load %653 : !llvm.ptr<i1>
    %655 = llvm.extractvalue %540[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %656 = llvm.getelementptr %655[%650] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %657 = llvm.load %656 : !llvm.ptr<i64>
    %658 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %659 = llvm.getelementptr %658[%650] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %660 = llvm.load %659 : !llvm.ptr<i64>
    %661 = llvm.select %654, %657, %660 : i1, i64
    %662 = llvm.extractvalue %646[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %663 = llvm.getelementptr %662[%650] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %661, %663 : !llvm.ptr<i64>
    %664 = llvm.add %650, %649  : i64
    llvm.br ^bb70(%664 : i64)
  ^bb72:  // pred: ^bb70
    %665 = llvm.mlir.constant(1 : index) : i64
    %666 = llvm.mlir.constant(1 : index) : i64
    %667 = llvm.mlir.constant(1 : index) : i64
    %668 = llvm.mlir.constant(1 : index) : i64
    %669 = llvm.mlir.constant(1 : index) : i64
    %670 = llvm.mlir.null : !llvm.ptr<i32>
    %671 = llvm.getelementptr %670[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %672 = llvm.ptrtoint %671 : !llvm.ptr<i32> to i64
    %673 = llvm.mlir.constant(16 : index) : i64
    %674 = llvm.add %672, %673  : i64
    %675 = llvm.call @malloc(%674) : (i64) -> !llvm.ptr<i8>
    %676 = llvm.bitcast %675 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %677 = llvm.ptrtoint %676 : !llvm.ptr<i32> to i64
    %678 = llvm.mlir.constant(1 : index) : i64
    %679 = llvm.sub %673, %678  : i64
    %680 = llvm.add %677, %679  : i64
    %681 = llvm.urem %680, %673  : i64
    %682 = llvm.sub %680, %681  : i64
    %683 = llvm.inttoptr %682 : i64 to !llvm.ptr<i32>
    %684 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %685 = llvm.insertvalue %676, %684[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %686 = llvm.insertvalue %683, %685[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.mlir.constant(0 : index) : i64
    %688 = llvm.insertvalue %687, %686[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.insertvalue %665, %688[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %690 = llvm.insertvalue %666, %689[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %691 = llvm.insertvalue %667, %690[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %692 = llvm.insertvalue %668, %691[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %693 = llvm.insertvalue %666, %692[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.insertvalue %667, %693[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.insertvalue %668, %694[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.insertvalue %669, %695[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %697 = llvm.mlir.constant(0 : index) : i64
    %698 = llvm.mlir.constant(1 : index) : i64
    %699 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%697 : i64)
  ^bb73(%700: i64):  // 2 preds: ^bb72, ^bb83
    %701 = llvm.icmp "slt" %700, %698 : i64
    llvm.cond_br %701, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %702 = llvm.mlir.constant(0 : index) : i64
    %703 = llvm.mlir.constant(1 : index) : i64
    %704 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%702 : i64)
  ^bb75(%705: i64):  // 2 preds: ^bb74, ^bb82
    %706 = llvm.icmp "slt" %705, %703 : i64
    llvm.cond_br %706, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %707 = llvm.mlir.constant(0 : index) : i64
    %708 = llvm.mlir.constant(1 : index) : i64
    %709 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%707 : i64)
  ^bb77(%710: i64):  // 2 preds: ^bb76, ^bb81
    %711 = llvm.icmp "slt" %710, %708 : i64
    llvm.cond_br %711, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %712 = llvm.mlir.constant(0 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%712 : i64)
  ^bb79(%715: i64):  // 2 preds: ^bb78, ^bb80
    %716 = llvm.icmp "slt" %715, %713 : i64
    llvm.cond_br %716, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %717 = llvm.extractvalue %475[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %718 = llvm.add %13, %13  : i64
    %719 = llvm.add %718, %13  : i64
    %720 = llvm.add %719, %13  : i64
    %721 = llvm.getelementptr %717[%720] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %722 = llvm.load %721 : !llvm.ptr<i32>
    %723 = llvm.extractvalue %696[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %724 = llvm.add %700, %705  : i64
    %725 = llvm.add %724, %710  : i64
    %726 = llvm.add %725, %715  : i64
    %727 = llvm.getelementptr %723[%726] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %722, %727 : !llvm.ptr<i32>
    %728 = llvm.add %715, %714  : i64
    llvm.br ^bb79(%728 : i64)
  ^bb81:  // pred: ^bb79
    %729 = llvm.add %710, %709  : i64
    llvm.br ^bb77(%729 : i64)
  ^bb82:  // pred: ^bb77
    %730 = llvm.add %705, %704  : i64
    llvm.br ^bb75(%730 : i64)
  ^bb83:  // pred: ^bb75
    %731 = llvm.add %700, %699  : i64
    llvm.br ^bb73(%731 : i64)
  ^bb84:  // pred: ^bb73
    %732 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %733 = llvm.insertvalue %408, %732[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %734 = llvm.insertvalue %696, %733[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %734 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

