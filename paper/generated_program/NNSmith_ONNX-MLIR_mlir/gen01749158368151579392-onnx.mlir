module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.null : !llvm.ptr<i32>
    %53 = llvm.getelementptr %52[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<i32> to i64
    %55 = llvm.mlir.constant(16 : index) : i64
    %56 = llvm.add %54, %55  : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i32> to i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.sub %55, %60  : i64
    %62 = llvm.add %59, %61  : i64
    %63 = llvm.urem %62, %55  : i64
    %64 = llvm.sub %62, %63  : i64
    %65 = llvm.inttoptr %64 : i64 to !llvm.ptr<i32>
    %66 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %67 = llvm.insertvalue %58, %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %65, %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.insertvalue %69, %68[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %47, %70[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %49, %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %48, %74[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%79 : i64)
  ^bb1(%82: i64):  // 2 preds: ^bb0, ^bb11
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%84 : i64)
  ^bb3(%87: i64):  // 2 preds: ^bb2, ^bb10
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%89 : i64)
  ^bb5(%92: i64):  // 2 preds: ^bb4, ^bb9
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%94 : i64)
  ^bb7(%97: i64):  // 2 preds: ^bb6, ^bb8
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %99 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.add %82, %87  : i64
    %101 = llvm.add %100, %92  : i64
    %102 = llvm.add %101, %97  : i64
    %103 = llvm.getelementptr %99[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.sub %15, %104  : i32
    %106 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.add %82, %87  : i64
    %108 = llvm.add %107, %92  : i64
    %109 = llvm.add %108, %97  : i64
    %110 = llvm.getelementptr %106[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %105, %110 : !llvm.ptr<i32>
    %111 = llvm.add %97, %96  : i64
    llvm.br ^bb7(%111 : i64)
  ^bb9:  // pred: ^bb7
    %112 = llvm.add %92, %91  : i64
    llvm.br ^bb5(%112 : i64)
  ^bb10:  // pred: ^bb5
    %113 = llvm.add %87, %86  : i64
    llvm.br ^bb3(%113 : i64)
  ^bb11:  // pred: ^bb3
    %114 = llvm.add %82, %81  : i64
    llvm.br ^bb1(%114 : i64)
  ^bb12:  // pred: ^bb1
    %115 = llvm.mlir.constant(4 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.null : !llvm.ptr<i64>
    %118 = llvm.getelementptr %117[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %119 = llvm.ptrtoint %118 : !llvm.ptr<i64> to i64
    %120 = llvm.mlir.constant(16 : index) : i64
    %121 = llvm.add %119, %120  : i64
    %122 = llvm.call @malloc(%121) : (i64) -> !llvm.ptr<i8>
    %123 = llvm.bitcast %122 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %124 = llvm.ptrtoint %123 : !llvm.ptr<i64> to i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.sub %120, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.urem %127, %120  : i64
    %129 = llvm.sub %127, %128  : i64
    %130 = llvm.inttoptr %129 : i64 to !llvm.ptr<i64>
    %131 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %132 = llvm.insertvalue %123, %131[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %130, %132[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %115, %135[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %116, %136[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(4 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%138 : i64)
  ^bb13(%141: i64):  // 2 preds: ^bb12, ^bb14
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %143 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.getelementptr %143[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %144 : !llvm.ptr<i64>
    %145 = llvm.add %141, %140  : i64
    llvm.br ^bb13(%145 : i64)
  ^bb15:  // pred: ^bb13
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.null : !llvm.ptr<i64>
    %149 = llvm.getelementptr %148[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i64> to i64
    %151 = llvm.mlir.constant(16 : index) : i64
    %152 = llvm.add %150, %151  : i64
    %153 = llvm.call @malloc(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.bitcast %153 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i64> to i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.sub %151, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.urem %158, %151  : i64
    %160 = llvm.sub %158, %159  : i64
    %161 = llvm.inttoptr %160 : i64 to !llvm.ptr<i64>
    %162 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %163 = llvm.insertvalue %154, %162[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %164 = llvm.insertvalue %161, %163[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.insertvalue %165, %164[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.insertvalue %146, %166[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %147, %167[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%169 : i64)
  ^bb16(%172: i64):  // 2 preds: ^bb15, ^bb17
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %174 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.getelementptr %174[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %176 = llvm.load %175 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %178 = llvm.load %177 : !llvm.ptr<i64>
    %179 = llvm.mul %176, %178  : i64
    %180 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.getelementptr %180[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %181 : !llvm.ptr<i64>
    %182 = llvm.add %172, %171  : i64
    llvm.br ^bb16(%182 : i64)
  ^bb18:  // pred: ^bb16
    %183 = llvm.mlir.constant(4 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.null : !llvm.ptr<i1>
    %186 = llvm.getelementptr %185[%183] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %187 = llvm.ptrtoint %186 : !llvm.ptr<i1> to i64
    %188 = llvm.mlir.constant(16 : index) : i64
    %189 = llvm.add %187, %188  : i64
    %190 = llvm.call @malloc(%189) : (i64) -> !llvm.ptr<i8>
    %191 = llvm.bitcast %190 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %192 = llvm.ptrtoint %191 : !llvm.ptr<i1> to i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.sub %188, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.urem %195, %188  : i64
    %197 = llvm.sub %195, %196  : i64
    %198 = llvm.inttoptr %197 : i64 to !llvm.ptr<i1>
    %199 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %200 = llvm.insertvalue %191, %199[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %198, %200[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.insertvalue %202, %201[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.insertvalue %183, %203[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.insertvalue %184, %204[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(4 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%206 : i64)
  ^bb19(%209: i64):  // 2 preds: ^bb18, ^bb20
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %211 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.getelementptr %211[%209] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %213 = llvm.load %212 : !llvm.ptr<i64>
    %214 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.getelementptr %214[%209] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %216 = llvm.load %215 : !llvm.ptr<i64>
    %217 = llvm.icmp "eq" %213, %216 : i64
    %218 = llvm.extractvalue %205[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.getelementptr %218[%209] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %217, %219 : !llvm.ptr<i1>
    %220 = llvm.add %209, %208  : i64
    llvm.br ^bb19(%220 : i64)
  ^bb21:  // pred: ^bb19
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.null : !llvm.ptr<i64>
    %224 = llvm.getelementptr %223[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %225 = llvm.ptrtoint %224 : !llvm.ptr<i64> to i64
    %226 = llvm.mlir.constant(16 : index) : i64
    %227 = llvm.add %225, %226  : i64
    %228 = llvm.call @malloc(%227) : (i64) -> !llvm.ptr<i8>
    %229 = llvm.bitcast %228 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %230 = llvm.ptrtoint %229 : !llvm.ptr<i64> to i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.sub %226, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.urem %233, %226  : i64
    %235 = llvm.sub %233, %234  : i64
    %236 = llvm.inttoptr %235 : i64 to !llvm.ptr<i64>
    %237 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %238 = llvm.insertvalue %229, %237[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.insertvalue %236, %238[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.insertvalue %240, %239[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.insertvalue %221, %241[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %222, %242[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%244 : i64)
  ^bb22(%247: i64):  // 2 preds: ^bb21, ^bb23
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %249 = llvm.extractvalue %205[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.getelementptr %249[%247] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %251 = llvm.load %250 : !llvm.ptr<i1>
    %252 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.getelementptr %252[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %254 = llvm.load %253 : !llvm.ptr<i64>
    %255 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %257 = llvm.load %256 : !llvm.ptr<i64>
    %258 = llvm.select %251, %254, %257 : i1, i64
    %259 = llvm.extractvalue %243[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.getelementptr %259[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %258, %260 : !llvm.ptr<i64>
    %261 = llvm.add %247, %246  : i64
    llvm.br ^bb22(%261 : i64)
  ^bb24:  // pred: ^bb22
    %262 = llvm.extractvalue %243[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %264 = llvm.load %263 : !llvm.ptr<i64>
    %265 = llvm.extractvalue %243[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %267 = llvm.load %266 : !llvm.ptr<i64>
    %268 = llvm.extractvalue %243[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.getelementptr %268[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %270 = llvm.load %269 : !llvm.ptr<i64>
    %271 = llvm.extractvalue %243[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %272 = llvm.getelementptr %271[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %273 = llvm.load %272 : !llvm.ptr<i64>
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mul %273, %270  : i64
    %276 = llvm.mul %275, %267  : i64
    %277 = llvm.mul %276, %264  : i64
    %278 = llvm.mlir.null : !llvm.ptr<i32>
    %279 = llvm.getelementptr %278[%277] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i32> to i64
    %281 = llvm.mlir.constant(16 : index) : i64
    %282 = llvm.add %280, %281  : i64
    %283 = llvm.call @malloc(%282) : (i64) -> !llvm.ptr<i8>
    %284 = llvm.bitcast %283 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %285 = llvm.ptrtoint %284 : !llvm.ptr<i32> to i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.sub %281, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.urem %288, %281  : i64
    %290 = llvm.sub %288, %289  : i64
    %291 = llvm.inttoptr %290 : i64 to !llvm.ptr<i32>
    %292 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %293 = llvm.insertvalue %284, %292[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %291, %293[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.insertvalue %295, %294[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %264, %296[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %267, %297[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %270, %298[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %276, %300[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %275, %301[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %273, %302[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %274, %303[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%305 : i64)
  ^bb25(%307: i64):  // 2 preds: ^bb24, ^bb35
    %308 = llvm.icmp "slt" %307, %264 : i64
    llvm.cond_br %308, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%309 : i64)
  ^bb27(%311: i64):  // 2 preds: ^bb26, ^bb34
    %312 = llvm.icmp "slt" %311, %267 : i64
    llvm.cond_br %312, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%313 : i64)
  ^bb29(%315: i64):  // 2 preds: ^bb28, ^bb33
    %316 = llvm.icmp "slt" %315, %270 : i64
    llvm.cond_br %316, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%317 : i64)
  ^bb31(%319: i64):  // 2 preds: ^bb30, ^bb32
    %320 = llvm.icmp "slt" %319, %273 : i64
    llvm.cond_br %320, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %321 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.add %16, %16  : i64
    %323 = llvm.add %322, %16  : i64
    %324 = llvm.add %323, %16  : i64
    %325 = llvm.getelementptr %321[%324] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %326 = llvm.load %325 : !llvm.ptr<i32>
    %327 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.extractvalue %304[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mul %307, %328  : i64
    %330 = llvm.extractvalue %304[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mul %311, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.extractvalue %304[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.mul %315, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.add %335, %319  : i64
    %337 = llvm.getelementptr %327[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %326, %337 : !llvm.ptr<i32>
    %338 = llvm.add %319, %318  : i64
    llvm.br ^bb31(%338 : i64)
  ^bb33:  // pred: ^bb31
    %339 = llvm.add %315, %314  : i64
    llvm.br ^bb29(%339 : i64)
  ^bb34:  // pred: ^bb29
    %340 = llvm.add %311, %310  : i64
    llvm.br ^bb27(%340 : i64)
  ^bb35:  // pred: ^bb27
    %341 = llvm.add %307, %306  : i64
    llvm.br ^bb25(%341 : i64)
  ^bb36:  // pred: ^bb25
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.null : !llvm.ptr<i32>
    %348 = llvm.getelementptr %347[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %349 = llvm.ptrtoint %348 : !llvm.ptr<i32> to i64
    %350 = llvm.mlir.constant(16 : index) : i64
    %351 = llvm.add %349, %350  : i64
    %352 = llvm.call @malloc(%351) : (i64) -> !llvm.ptr<i8>
    %353 = llvm.bitcast %352 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i32> to i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.sub %350, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.urem %357, %350  : i64
    %359 = llvm.sub %357, %358  : i64
    %360 = llvm.inttoptr %359 : i64 to !llvm.ptr<i32>
    %361 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %362 = llvm.insertvalue %353, %361[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %360, %362[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.insertvalue %364, %363[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %342, %365[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %343, %366[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %344, %367[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %345, %368[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %343, %369[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %344, %370[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %345, %371[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %346, %372[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%374 : i64)
  ^bb37(%376: i64):  // 2 preds: ^bb36, ^bb47
    %377 = llvm.icmp "slt" %376, %264 : i64
    llvm.cond_br %377, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%378 : i64)
  ^bb39(%380: i64):  // 2 preds: ^bb38, ^bb46
    %381 = llvm.icmp "slt" %380, %267 : i64
    llvm.cond_br %381, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%382 : i64)
  ^bb41(%384: i64):  // 2 preds: ^bb40, ^bb45
    %385 = llvm.icmp "slt" %384, %270 : i64
    llvm.cond_br %385, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%386 : i64)
  ^bb43(%388: i64):  // 2 preds: ^bb42, ^bb44
    %389 = llvm.icmp "slt" %388, %273 : i64
    llvm.cond_br %389, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %390 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.extractvalue %304[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.mul %376, %391  : i64
    %393 = llvm.extractvalue %304[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.mul %380, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.extractvalue %304[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mul %384, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.add %398, %388  : i64
    %400 = llvm.getelementptr %390[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %401 = llvm.load %400 : !llvm.ptr<i32>
    %402 = llvm.sub %15, %401  : i32
    %403 = llvm.extractvalue %373[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.add %376, %380  : i64
    %405 = llvm.add %404, %384  : i64
    %406 = llvm.add %405, %388  : i64
    %407 = llvm.getelementptr %403[%406] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %402, %407 : !llvm.ptr<i32>
    %408 = llvm.add %388, %387  : i64
    llvm.br ^bb43(%408 : i64)
  ^bb45:  // pred: ^bb43
    %409 = llvm.add %384, %383  : i64
    llvm.br ^bb41(%409 : i64)
  ^bb46:  // pred: ^bb41
    %410 = llvm.add %380, %379  : i64
    llvm.br ^bb39(%410 : i64)
  ^bb47:  // pred: ^bb39
    %411 = llvm.add %376, %375  : i64
    llvm.br ^bb37(%411 : i64)
  ^bb48:  // pred: ^bb37
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.null : !llvm.ptr<i32>
    %418 = llvm.getelementptr %417[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %419 = llvm.ptrtoint %418 : !llvm.ptr<i32> to i64
    %420 = llvm.mlir.constant(16 : index) : i64
    %421 = llvm.add %419, %420  : i64
    %422 = llvm.call @malloc(%421) : (i64) -> !llvm.ptr<i8>
    %423 = llvm.bitcast %422 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %424 = llvm.ptrtoint %423 : !llvm.ptr<i32> to i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.sub %420, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.urem %427, %420  : i64
    %429 = llvm.sub %427, %428  : i64
    %430 = llvm.inttoptr %429 : i64 to !llvm.ptr<i32>
    %431 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %432 = llvm.insertvalue %423, %431[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %430, %432[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.insertvalue %434, %433[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %412, %435[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %413, %436[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %414, %437[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %415, %438[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %414, %440[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %415, %441[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%444 : i64)
  ^bb49(%447: i64):  // 2 preds: ^bb48, ^bb59
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%449 : i64)
  ^bb51(%452: i64):  // 2 preds: ^bb50, ^bb58
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%454 : i64)
  ^bb53(%457: i64):  // 2 preds: ^bb52, ^bb57
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%459 : i64)
  ^bb55(%462: i64):  // 2 preds: ^bb54, ^bb56
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %464 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.add %447, %452  : i64
    %466 = llvm.add %465, %457  : i64
    %467 = llvm.add %466, %462  : i64
    %468 = llvm.getelementptr %464[%467] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %469 = llvm.load %468 : !llvm.ptr<i32>
    %470 = llvm.sub %15, %469  : i32
    %471 = llvm.extractvalue %443[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.add %447, %452  : i64
    %473 = llvm.add %472, %457  : i64
    %474 = llvm.add %473, %462  : i64
    %475 = llvm.getelementptr %471[%474] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %470, %475 : !llvm.ptr<i32>
    %476 = llvm.add %462, %461  : i64
    llvm.br ^bb55(%476 : i64)
  ^bb57:  // pred: ^bb55
    %477 = llvm.add %457, %456  : i64
    llvm.br ^bb53(%477 : i64)
  ^bb58:  // pred: ^bb53
    %478 = llvm.add %452, %451  : i64
    llvm.br ^bb51(%478 : i64)
  ^bb59:  // pred: ^bb51
    %479 = llvm.add %447, %446  : i64
    llvm.br ^bb49(%479 : i64)
  ^bb60:  // pred: ^bb49
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.null : !llvm.ptr<i32>
    %486 = llvm.getelementptr %485[%480] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %487 = llvm.ptrtoint %486 : !llvm.ptr<i32> to i64
    %488 = llvm.mlir.constant(16 : index) : i64
    %489 = llvm.add %487, %488  : i64
    %490 = llvm.call @malloc(%489) : (i64) -> !llvm.ptr<i8>
    %491 = llvm.bitcast %490 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %492 = llvm.ptrtoint %491 : !llvm.ptr<i32> to i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.sub %488, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.urem %495, %488  : i64
    %497 = llvm.sub %495, %496  : i64
    %498 = llvm.inttoptr %497 : i64 to !llvm.ptr<i32>
    %499 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %500 = llvm.insertvalue %491, %499[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %498, %500[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.insertvalue %502, %501[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %480, %503[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %481, %504[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %482, %505[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %483, %506[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %481, %507[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %482, %508[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %483, %509[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %484, %510[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%512 : i64)
  ^bb61(%515: i64):  // 2 preds: ^bb60, ^bb71
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%517 : i64)
  ^bb63(%520: i64):  // 2 preds: ^bb62, ^bb70
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%522 : i64)
  ^bb65(%525: i64):  // 2 preds: ^bb64, ^bb69
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%527 : i64)
  ^bb67(%530: i64):  // 2 preds: ^bb66, ^bb68
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %532 = llvm.extractvalue %443[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.add %515, %520  : i64
    %534 = llvm.add %533, %525  : i64
    %535 = llvm.add %534, %530  : i64
    %536 = llvm.getelementptr %532[%535] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %537 = llvm.load %536 : !llvm.ptr<i32>
    %538 = llvm.sub %15, %537  : i32
    %539 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.add %515, %520  : i64
    %541 = llvm.add %540, %525  : i64
    %542 = llvm.add %541, %530  : i64
    %543 = llvm.getelementptr %539[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %538, %543 : !llvm.ptr<i32>
    %544 = llvm.add %530, %529  : i64
    llvm.br ^bb67(%544 : i64)
  ^bb69:  // pred: ^bb67
    %545 = llvm.add %525, %524  : i64
    llvm.br ^bb65(%545 : i64)
  ^bb70:  // pred: ^bb65
    %546 = llvm.add %520, %519  : i64
    llvm.br ^bb63(%546 : i64)
  ^bb71:  // pred: ^bb63
    %547 = llvm.add %515, %514  : i64
    llvm.br ^bb61(%547 : i64)
  ^bb72:  // pred: ^bb61
    %548 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %549 = llvm.insertvalue %373, %548[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %550 = llvm.insertvalue %511, %549[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %550 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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

